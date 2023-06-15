import 'dart:async';

import 'package:fashionhub_xd/Comman_weigets/Comman_Container.dart';
import 'package:fashionhub_xd/Comman_weigets/Comman_text.dart';
import 'package:fashionhub_xd/Screen/page_view.dart';
import 'package:flutter/material.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 2),
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Page_view(),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Comman_Container(
            height: height,
            width: width,
            gradient: LinearGradient(
              colors: [
                Color(0xff95D5B2),
                Color(0xff74C69D),
                Color(0xff52B788),
                Color(0xff40916C),
                Color(0xff2D6A4F),
                Color(0xff1B4332),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'asserts/image/splach_screen.png',
                  height: height * 0.25,
                  width: width * 0.26,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Comman_Text(
                      text: "Fashion",
                      color: Colors.white,
                      fontsize: 40,
                      fontweight: FontWeight.bold,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Comman_Text(
                      text: "Hub",
                      color: Colors.amber,
                      fontsize: 40,
                      fontweight: FontWeight.bold,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
