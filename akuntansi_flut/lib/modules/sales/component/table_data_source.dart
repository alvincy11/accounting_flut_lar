import 'dart:developer';

import 'package:akuntansi_flut/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../commons/routes/app_navigation.dart';
import '../../../services/model/response/sales_header_list.dart';
import '../../../services/model/sales_header.dart';
import '../../../services/repository/sales_repo.dart';
import '../../../utils/v_color.dart';
import '../../../utils/widgets/v_widgets.dart';

class SalesDataTableSource extends DataTableSource {
  SalesHeaderListResponse _data = SalesHeaderListResponse();
  List<SalesHeader> dataList = List<SalesHeader>.empty(growable: true);

  void sort<T>(Comparable<T> Function(SalesHeader supplier) getField, bool ascending) {
    dataList.sort((SalesHeader a, SalesHeader b) {
      if (!ascending) {
        final SalesHeader c = a;
        a = b;
        b = c;
      }
      final Comparable<T> aValue = getField(a);
      final Comparable<T> bValue = getField(b);
      return Comparable.compare(aValue, bValue);
    });
    notifyListeners();
  }

  Future<bool> getData(int page, bool reset, String startDate, String endDate, {int rowPerPage = 25}) async {
    try {
      if (reset) {
        dataList.clear();
      }
      var response = await SalesRepo().getAllDataBy(page, startDate, endDate, rowPerPage: rowPerPage);
      if (response.code == 200) {
        _data = response.data ?? SalesHeaderListResponse();
        dataList.addAll(_data.salesHeaderList ?? []);
        dataList = dataList.toSet().toList();

        final ids = dataList.map((e) => e.id).toSet();
        dataList.retainWhere((x) => ids.remove(x.id));
      }
    } catch (e) {
      log("error : $e");
    }
    return false;
  }

  @override
  bool get isRowCountApproximate => false;
  @override
  int get rowCount => _data.total ?? 0;
  @override
  int get selectedRowCount => 0;

  int get rowPerPage => _data.perPage!;

  int getRowPerPageCustom() {
    int currentVal = _data.to! - _data.from! + 1;
    return currentVal;
  }

  @override
  DataRow getRow(int index) {
    return DataRow(
      color: index % 2 == 1 ? MaterialStateColor.resolveWith((states) => VColor.grey4Opacity) : MaterialStateColor.resolveWith((states) => VColor.transparant),
      cells: [
        dataCell(dataList[index].id!.toString(), Get.width * (5 / 100)),
        dataCell(dataList[index].transactionDate!.dateDatabaseToView, Get.width * (10 / 100)),
        dataCell(dataList[index].cName.toString(), Get.width * (25 / 100)),
        dataCell(dataList[index].netAmount.toString().thousandSeparator, Get.width * (10 / 100)),
        DataCell(
          Container(
            padding: const EdgeInsets.only(right: 5),
            constraints: BoxConstraints(
              minWidth: Get.width * (5 / 100),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  hoverColor: VColor.transparant,
                  onPressed: () {
                    VNavigation().toSalesDetailPage(dataList[index].id!);
                  },
                  icon: const Icon(Icons.ads_click, color: VColor.black),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  DataCell dataCell(String? text, double width) {
    return DataCell(
      Container(
        constraints: BoxConstraints(minWidth: width),
        // width: width,
        padding: const EdgeInsets.only(right: 5),
        child: VText(text ?? "null", align: TextAlign.left),
      ),
    );
  }
}
