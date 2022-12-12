import 'package:flutter/material.dart';
import 'package:tahfiz/tahfiz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Alexandria"),
      home: const Tahfiz(),
    );
  }
}

