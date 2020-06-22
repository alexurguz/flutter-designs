import 'package:design/src/pages/basic_design_page.dart';
import 'package:design/src/pages/buttons_page.dart';
import 'package:design/src/pages/home_page.dart';
import 'package:design/src/pages/scroll_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Designs',
      initialRoute: 'home',
      routes: {
        'home': ( BuildContext context ) => HomePage(),
        'basic': ( BuildContext context ) => BasicPage(),
        'scroll': ( BuildContext context ) => ScrollPage(),
        'button': ( BuildContext context ) => ButtonsPage(),
      },

    );
  }
}
