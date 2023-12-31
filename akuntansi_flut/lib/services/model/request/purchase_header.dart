import 'purchase_header_line.dart';

class PurchaseHeaderRequest {
  String? transactionDate;
  String? sId;
  String? grossAmount;
  String? netAmount;
  String? note;
  List<PurchaseLineRequest>? data;

  PurchaseHeaderRequest({this.transactionDate, this.sId, this.grossAmount, this.netAmount, this.note, this.data});

  PurchaseHeaderRequest.fromJson(Map<String, dynamic> json) {
    transactionDate = json['transaction_date'];
    sId = json['s_id'];
    grossAmount = json['gross_amount'];
    netAmount = json['net_amount'];
    note = json['note'];
    if (json['data'] != null) {
      data = <PurchaseLineRequest>[];
      json['data'].forEach((v) {
        data!.add(PurchaseLineRequest.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['transaction_date'] = transactionDate;
    data['s_id'] = sId;
    data['gross_amount'] = grossAmount;
    data['net_amount'] = netAmount;
    data['note'] = note;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
