import 'package:assignement2_22b1530/pages/home_page.dart';
import 'package:assignement2_22b1530/pages/login_page.dart';
import 'package:assignement2_22b1530/pages/page_two.dart';
import 'package:assignement2_22b1530/utility/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: MyRoutes.loginRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.pagetwoRoute: (context) => PageTwo(),
      },
    );
  }
}
