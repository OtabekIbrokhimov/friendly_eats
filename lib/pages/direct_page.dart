import 'package:friendly_eats/pages/andiroid_page.dart';
import 'package:friendly_eats/pages/web_page.dart';
import 'package:flutter/material.dart';
class DirectPage extends StatefulWidget {
  const DirectPage({Key? key}) : super(key: key);

  @override
  _DirectPageState createState() => _DirectPageState();
}

class _DirectPageState extends State<DirectPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.shortestSide;
    if (size < 600) {
      return const AndiroidPage();
    } else{
      return const WebPage();
    }
  }
}