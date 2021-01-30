import 'package:flutter/material.dart';
import 'package:designs/src/pages/design1/design1_page.dart';
import 'package:designs/src/pages/design2/design2_page.dart';
import 'package:designs/src/pages/design3/design3_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: '3',
      routes: {
        '1': (BuildContext context) => Design1Page(),
        '2': (BuildContext context) => Design2Page(),
        '3': (BuildContext context) => Design3Page()
      },
    );
  }
}
