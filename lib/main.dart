import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_ready_rental/routes/AllRoutes.dart';
import 'package:flutter_ready_rental/routes/Routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
  // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  //   systemNavigationBarColor: Color.fromRGBO(250, 250, 250, 1),
  //   statusBarIconBrightness: Brightness.dark,
  //   statusBarColor: Color.fromRGBO(250, 250, 250, 1),
  // ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: false,
      splitScreenMode: false,
      builder: (_, child) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Spaceddy',
            theme: ThemeData(
              fontFamily: 'PlusJakartaSans',
            ),
            // home: const WelcomeScreen(),
            initialRoute: kInitialRoute,
            routes: allRoutes,
            builder: (BuildContext context, child) {
              return Scaffold(
                resizeToAvoidBottomInset: false,
                body: GestureDetector(
                  onTap: () {
                    FocusScope.of(context).requestFocus(new FocusNode());
                  },
                  child: MediaQuery(
                    child: child ?? Container(),
                    data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                  ),
                ),
              );
            });
      },
    );
  }
}
