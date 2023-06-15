import 'package:fashionhub_xd/Screen/splash_screen.dart';
import 'package:flutter/material.dart';

import 'Screen/Filtter_Screen.dart';
import 'Screen/check_out.dart';
import 'Screen/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home_page(),
      debugShowCheckedModeBanner: false,
    );
  }
}
