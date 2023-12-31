import 'package:akuntansi_flut/modules/item_category/item_category.dart';
import 'package:akuntansi_flut/services/model/item_category.dart';
import 'package:akuntansi_flut/utils/v_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constants.dart';
import '../../../utils/widgets/v_widgets.dart';

class ItemCategoryTable extends StatefulWidget {
  const ItemCategoryTable({super.key});

  @override
  State<ItemCategoryTable> createState() => _ItemCategoryTableState();
}

class _ItemCategoryTableState extends State<ItemCategoryTable> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ItemCategoryController>(
      builder: (controller) => controller.isLoading
          ? const VLoadingPage()
          : controller.dataSource.rowCount <= 0
              ? const Center(
                  child: VText("Data is Empty"),
                )
              : Container(
                  decoration: const BoxDecoration(
                    color: VColor.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(radiusMedium),
                    ),
                  ),
                  child: Theme(
                    data: Theme.of(Get.context!).copyWith(cardColor: VColor.white, dividerColor: VColor.primary),
                    child: PaginatedDataTable(
                      source: controller.dataSource,
                      primary: true,
                      columnSpacing: 10,
                      horizontalMargin: 10,
                      rowsPerPage: controller.dataSource.getRowPerPageCustom(),
                      initialFirstRowIndex: (controller.page - 1) * controller.dataSource.rowPerPage,
                      showCheckboxColumn: false,
                      onPageChanged: (value) {
                        controller.changePage(value ~/ controller.dataSource.rowPerPage + 1, false);
                      },
                      columns: [
                        tableColumn(controller, "ID", (itemCategory) => itemCategory.id!, minWidth: Get.width * (5 / 100)),
                        tableColumn(controller, "Name", (itemCategory) => itemCategory.name!, minWidth: Get.width * (25 / 100)),
                        tableColumn(controller, "Active", (itemCategory) => itemCategory.active!, minWidth: Get.width * (5 / 100)),
                        tableColumn(controller, " ", null, minWidth: Get.width * (5 / 100)),
                      ],
                    ),
                  ),
                ),
    );
  }

  DataColumn tableColumn<T>(
    ItemCategoryController controller,
    String title,
    Comparable<T> Function(ItemCategory user)? sortBy, {
    double minWidth = 100.0,
  }) {
    return DataColumn(
      label: SizedBox(
        width: minWidth,
        child: VText(
          title,
          align: TextAlign.left,
          overflow: TextOverflow.clip,
        ),
      ),
      onSort: sortBy != null ? (columnIndex, ascending) => controller.sortData(sortBy, columnIndex, ascending) : null,
    );
  }
}
