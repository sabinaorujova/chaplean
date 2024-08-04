import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'features/app_router/app_router.dart';
import 'package:flutter/material.dart';
import 'app/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (_, child) => MaterialApp.router(
        routerConfig: router,
        //routeInformationParser: router.routeInformationParser,
        debugShowCheckedModeBanner: false,
        theme: UITheme.appTheme,
      ),
    );
  }
}
