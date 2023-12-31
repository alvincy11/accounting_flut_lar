import 'package:akuntansi_flut/modules/customer_type/create/customer_type_create.dart';
import 'package:akuntansi_flut/modules/customer_type/detail/customer_type_detail.dart';
import 'package:akuntansi_flut/modules/customer_type/lookup/customer_type_lookup.dart';
import 'package:akuntansi_flut/modules/item/lookup/item_lookup.dart';
import 'package:akuntansi_flut/modules/item_category/lookup/item_category_lookup.dart';
import 'package:akuntansi_flut/modules/sales/detail/sales_detail.dart';
import 'package:akuntansi_flut/modules/supplier/create/supplier_create.dart';
import 'package:akuntansi_flut/modules/supplier/lookup/supplier_lookup.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../modules/customer/create/customer_create.dart';
import '../../modules/customer/customer.dart';
import '../../modules/customer/detail/customer_detail.dart';
import '../../modules/customer/lookup/customer_lookup.dart';
import '../../modules/customer_type/customer_type.dart';
import '../../modules/dashboard/dashboard.dart';
import '../../modules/item/item.dart';
import '../../modules/item/item_create/item_create.dart';
import '../../modules/item/item_detail/item_detail.dart';
import '../../modules/item_category/item_category.dart';
import '../../modules/item_category/item_category_create/item_category_create.dart';
import '../../modules/item_category/item_category_detail/item_category_detail.dart';
import '../../modules/login/login.dart';
import '../../modules/purchase/create/purchase_create.dart';
import '../../modules/purchase/detail/purchase_detail.dart';
import '../../modules/purchase/purchase.dart';
import '../../modules/sales/create/sales_create.dart';
import '../../modules/sales/sales.dart';
import '../../modules/supplier/detail/supplier_detail.dart';
import '../../modules/supplier/supplier.dart';
import '../middlewares/middlewares.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();
  static const initial = RoutesPath.init;

  static final routes = [
    GetPage(
      name: RoutesPath.init,
      page: () => Container(),
      middlewares: [
        RouteAuthMiddleware(priority: 1),
      ],
    ),
    GetPage(
      name: RoutesPath.login,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: RoutesPath.dashboard,
      page: () => const DashboardPage(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: RoutesPath.customer,
      page: () => const CustomerPage(),
      binding: CustomerBinding(),
    ),
    GetPage(
      name: RoutesPath.customerType,
      page: () => const CustomerTypePage(),
      binding: CustomerTypeBinding(),
    ),
    GetPage(
      name: RoutesPath.item,
      page: () => const ItemPage(),
      binding: ItemBinding(),
    ),
    GetPage(
      name: RoutesPath.itemCategory,
      page: () => const ItemCategoryPage(),
      binding: ItemCategoryBinding(),
    ),
    GetPage(
      name: RoutesPath.supplier,
      page: () => const SupplierPage(),
      binding: SupplierBinding(),
    ),
    GetPage(
      name: RoutesPath.purchase,
      page: () => const PurchasePage(),
      binding: PurchaseBinding(),
    ),
    GetPage(
      name: RoutesPath.sales,
      page: () => const SalesPage(),
      binding: SalesBinding(),
    ),
    GetPage(
      name: RoutesPath.itemDetail,
      page: () => const ItemDetailPage(),
      binding: ItemDetailBinding(),
    ),
    GetPage(
      name: RoutesPath.itemCreate,
      page: () => const ItemCreatePage(),
      binding: ItemCreateBinding(),
    ),
    GetPage(
      name: RoutesPath.itemLookup,
      page: () => const ItemLookUpPage(),
      binding: ItemLookUpBinding(),
    ),
    GetPage(
      name: RoutesPath.itemCategoryDetail,
      page: () => const ItemCategoryDetailPage(),
      binding: ItemCategoryDetailBinding(),
    ),
    GetPage(
      name: RoutesPath.itemCategoryCreate,
      page: () => const ItemCategoryCreatePage(),
      binding: ItemCategoryCreateBinding(),
    ),
    GetPage(
      name: RoutesPath.itemCategoryLookUp,
      page: () => const ItemCategoryLookUpPage(),
      binding: ItemCategoryLookUpBinding(),
    ),
    GetPage(
      name: RoutesPath.customerDetail,
      page: () => const CustomerDetailPage(),
      binding: CustomerDetailBinding(),
    ),
    GetPage(
      name: RoutesPath.customerCreate,
      page: () => const CustomerCreatePage(),
      binding: CustomerCreateBinding(),
    ),
    GetPage(
      name: RoutesPath.customerLookUp,
      page: () => const CustomerLookUpPage(),
      binding: CustomerLookUpBinding(),
    ),
    GetPage(
      name: RoutesPath.customerTypeDetail,
      page: () => const CustomerTypeDetailPage(),
      binding: CustomerTypeDetailBinding(),
    ),
    GetPage(
      name: RoutesPath.customerTypeCreate,
      page: () => const CustomerTypeCreatePage(),
      binding: CustomerTypeCreateBinding(),
    ),
    GetPage(
      name: RoutesPath.customerTypeLookUp,
      page: () => const CustomerTypeLookUpPage(),
      binding: CustomerTypeLookUpBinding(),
    ),
    GetPage(
      name: RoutesPath.supplierDetail,
      page: () => const SupplierDetailPage(),
      binding: SupplierDetailBinding(),
    ),
    GetPage(
      name: RoutesPath.supplierCreate,
      page: () => const SupplierCreatePage(),
      binding: SupplierCreateBinding(),
    ),
    GetPage(
      name: RoutesPath.supplierLookUp,
      page: () => const SupplierLookUpPage(),
      binding: SupplierLookUpBinding(),
    ),
    GetPage(
      name: RoutesPath.purchaseDetail,
      page: () => const PurchaseDetailPage(),
      binding: PurchaseDetailBinding(),
    ),
    GetPage(
      name: RoutesPath.purchaseCreate,
      page: () => const PurchaseCreatePage(),
      binding: PurchaseCreateBinding(),
    ),
    GetPage(
      name: RoutesPath.salesDetail,
      page: () => const SalesDetailPage(),
      binding: SalesDetailBinding(),
    ),
    GetPage(
      name: RoutesPath.salesCreate,
      page: () => const SalesCreatePage(),
      binding: SalesCreateBinding(),
    ),
  ];
}
