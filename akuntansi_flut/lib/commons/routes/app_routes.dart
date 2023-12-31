part of 'app_pages.dart';

abstract class RoutesPath {
  RoutesPath._();
  static const init = '/';
  static const login = '/login';
  static const dashboard = '/dashboard';
  static const customer = '/customer';
  static const customerType = '/customer-type';
  static const supplier = '/supplier';
  static const item = '/item';
  static const itemCategory = '/item-category';
  static const purchase = '/purchase';
  static const sales = '/sales';

  static const itemDetail = '/item-detail';
  static const itemCreate = '/item-create';
  static const itemLookup = '/item-lookup';

  static const itemCategoryDetail = '/item-category-detail';
  static const itemCategoryCreate = '/item-category-create';
  static const itemCategoryLookUp = '/item-category-lookup';

  static const customerDetail = '/customer-detail';
  static const customerCreate = '/customer-create';
  static const customerLookUp = '/customer-lookup';

  static const customerTypeDetail = '/customer-type-detail';
  static const customerTypeCreate = '/customer-type-create';
  static const customerTypeLookUp = '/customer-type-lookup';

  static const supplierDetail = '/supplier-detail';
  static const supplierCreate = '/supplier-create';
  static const supplierLookUp = '/supplier-lookup';

  static const purchaseDetail = '/purchase-detail';
  static const purchaseCreate = '/purchase-create';

  static const salesDetail = '/sales-detail';
  static const salesCreate = '/sales-create';
}
