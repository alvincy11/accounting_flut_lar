class ItemRequest {
  String? name;
  String? active;
  String? haveChild;
  String? parentId;
  String? icId;

  ItemRequest({this.name, this.active, this.haveChild, this.parentId, this.icId});

  ItemRequest.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    active = json['active'];
    haveChild = json['have_child'];
    parentId = json['parent_id'];
    icId = json['ic_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['active'] = active;
    data['have_child'] = haveChild;
    data['parent_id'] = parentId;
    data['ic_id'] = icId;
    return data;
  }
}
