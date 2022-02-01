import 'package:flutter/material.dart';
import 'package:friendly_eats/pages/andiroid_page.dart';
import 'package:friendly_eats/pages/direct_page.dart';
import 'package:friendly_eats/pages/web_page.dart';
import 'package:flutter/services.dart';
void main() {
  runApp(const MyApp());
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DirectPage(

      ),
    );
  }
}
