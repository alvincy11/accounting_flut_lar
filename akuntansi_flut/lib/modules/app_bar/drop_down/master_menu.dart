import 'package:akuntansi_flut/commons/routes/app_navigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constants.dart';
import '../../../utils/v_color.dart';
import '../../../utils/widgets/v_widgets.dart';
import '../custom_app_bar.dart';

Widget masterMenuDropDown() {
  return SizedBox(
    width: 150,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: double.infinity,
          child: GetBuilder<CustomAppBarController>(
            builder: (controller) => VButton(
              "Item",
              onPressed: () {
                VNavigation().toItemPage();
                controller.updateDropdownMaster();
              },
              onHover: (p0) {
                controller.updateDropdownMaster();
              },
              textPadding: marginExtraLarge,
              buttonColor: VColor.white,
              textColor: VColor.black,
            ),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: GetBuilder<CustomAppBarController>(
            builder: (controller) => VButton(
              "Item Category",
              onPressed: () {
                VNavigation().toItemCategoryPage();
                controller.updateDropdownMaster();
              },
              onHover: (p0) {
                controller.updateDropdownMaster();
              },
              textPadding: marginExtraLarge,
              buttonColor: VColor.white,
              textColor: VColor.black,
            ),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: GetBuilder<CustomAppBarController>(
            builder: (controller) => VButton(
              "Supplier",
              onPressed: () {
                VNavigation().toSupplierPage();
                controller.updateDropdownMaster();
              },
              onHover: (p0) {
                controller.updateDropdownMaster();
              },
              textPadding: marginExtraLarge,
              buttonColor: VColor.white,
              textColor: VColor.black,
            ),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: GetBuilder<CustomAppBarController>(
            builder: (controller) => VButton(
              "Customer",
              onPressed: () {
                VNavigation().toCustomerPage();
                controller.updateDropdownMaster();
              },
              onHover: (p0) {
                controller.updateDropdownMaster();
              },
              textPadding: marginExtraLarge,
              buttonColor: VColor.white,
              textColor: VColor.black,
            ),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: GetBuilder<CustomAppBarController>(
            builder: (controller) => VButton(
              "Customer Type",
              onPressed: () {
                VNavigation().toCustomerTypePage();
                controller.updateDropdownMaster();
              },
              onHover: (p0) {
                controller.updateDropdownMaster();
              },
              textPadding: marginExtraLarge,
              buttonColor: VColor.white,
              textColor: VColor.black,
            ),
          ),
        ),
      ],
    ),
  );
}
