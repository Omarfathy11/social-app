import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nationsapp/core/routing/app_router.dart';
import 'package:nationsapp/core/routing/routes.dart';
import 'package:nationsapp/nationsapp.dart';

void main() {
  runApp(NationsApp(appRouter: AppRouter(),));
  
}
class NationsApp extends StatelessWidget {
  final AppRouter appRouter;
  NationsApp({
    Key? key,
    required this.appRouter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        theme: ThemeData(
          //  primaryColor: ColorsManager.mainBlue,
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
         initialRoute: Routes.onBoardingScreen, // بقوله اول صفحة هتظهر دي
       onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}