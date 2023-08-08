import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'appTheme.dart';
import 'bindings/initial_binding.dart';
import 'screens/dashbaord.dart';
import 'screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      darkTheme: darkThemeData(context),
      theme: lightThemeData(context),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      initialBinding: InitialBinding(),
      getPages: [
        GetPage(name: Routes.SPLASH_SCREEN, page: () => const SplashScreen()),
        GetPage(name: Routes.DASHBAORD, page: () => const DashboardScreen()),
      ],
      initialRoute: Routes.SPLASH_SCREEN,
    );
  }
}

class Routes {
  // ignore: constant_identifier_names
  static const String SPLASH_SCREEN = "/";
  // ignore: constant_identifier_names
  static const String DATA = "/data";
  // ignore: constant_identifier_names
  static const String DASHBAORD = "/dashboard";
}
