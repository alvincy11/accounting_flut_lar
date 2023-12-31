import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'commons/routes/app_pages.dart';
import 'commons/store/store.dart';
import 'modules/app_bar/custom_app_bar.dart';
import 'utils/scroll_behavior/custom_scroll_behavior.dart';
import 'utils/v_color.dart';

Future<void> main() async {
  await Get.putAsync<StorageService>(() => StorageService().init());
  Get.put<UserStore>(UserStore());
  Get.put<CustomAppBarController>(CustomAppBarController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: VColor.primary,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light,
    ));
    return ScreenUtilInit(
      builder: (context, child) => Portal(
        child: GetMaterialApp(
          scrollBehavior: MyCustomScrollBehavior(),
          title: 'Akuntans',
          theme: ThemeData(
            brightness: Brightness.light,
            primaryColor: VColor.primary,
          ),
          fallbackLocale: const Locale('en'),
          locale: const Locale('id', 'ID'),
          initialRoute: AppPages.initial,
          getPages: AppPages.routes,
          // debugShowCheckedModeBanner: false,
          builder: (context, child) {
            return MediaQuery(data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0), child: child!);
          },
        ),
      ),
    );
  }
}
