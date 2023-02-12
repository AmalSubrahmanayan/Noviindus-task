import 'package:bus_booking/screens/bottom_nab/bottom_nav.dart';
import 'package:bus_booking/screens/login/login_screen.dart';
import 'package:bus_booking/screens/splash/splash_screen.dart';
import 'package:bus_booking/utils/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kPrimaryColor),
      ),
      home: const SplashScreen(),
    );
  }
}
