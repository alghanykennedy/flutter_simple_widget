import 'package:flutter/material.dart';
import 'package:flutter_simple_widget/pages/detail_pages.dart';
import 'package:flutter_simple_widget/pages/home_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        '/detail_page': (BuildContext context) => const DetailPage(),
      },
    );
  }
}
