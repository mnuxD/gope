import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gope_app/screen/HomeScreen/HomeScreen.dart';
import 'package:gope_app/screen/LoginScreen/loginScreen.dart';
import 'package:gope_app/screen/SplashScreen/SplashScreen.dart';
import 'package:gope_app/screen/PlaceScreen/PlaceScreen.dart';
import 'package:gope_app/screen/TradeScreen/TradeScreen.dart';

Future<void> main() async {
  // ignore: prefer_const_constructors
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: const Color(0xFF000000),
    systemNavigationBarIconBrightness: Brightness.light,
    systemNavigationBarDividerColor: null,
    statusBarColor: const Color(0xFFD8D7FE),
    statusBarIconBrightness: Brightness.light,
    statusBarBrightness: Brightness.dark,
  ));
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky,
      overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom]);

  runApp(MaterialApp(
    title: "GOPE",
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => const SplashScreen(),
      '/logn': (context) => const LoginScreen(),
      '/home': (context) => HomeScreen(),
      '/place': (context) => PlaceScreen(),
      '/trade': (context) => TradeScreen()
    },
  ));
}
