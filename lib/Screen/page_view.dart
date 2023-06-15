import 'package:fashionhub_xd/Comman_weigets/Comman_Container.dart';
import 'package:fashionhub_xd/Comman_weigets/Comman_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'enter_mobile.dart';

class Page_view extends StatefulWidget {
  const Page_view({Key? key}) : super(key: key);

  @override
  State<Page_view> createState() => _Page_viewState();
}

class _Page_viewState extends State<Page_view> {
  List pageview = [
    {
      'img': "asserts/image/page_view.png",
      'name': "Online Order",
      'subtitle':
          "You can see the product with all angles,\ntrue and convenient",
    },
    {
      'img': "asserts/image/page_view2.png",
      'name': "Easy Payment",
      'subtitle':
          "You just need to take a photo or upload and \nwe will find similar products for you.",
    },
    {
      'img': "asserts/image/page_view3.png",
      'name': "Fast Delivery",
      'subtitle':
          "You just need to take a photo or upload and\nwe will find similar products for you.",
    },
  ];
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Comman_Container(
              height: height * 0.64,
              width: width,
              child: PageView(
                onPageChanged: (value) {
                  setState(() {
                    selected = value;
                  });
                },
                children: List.generate(
                  3,
                  (index) => Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 120,
                      ),
                      Image.asset(
                        pageview[index]['img'],
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      Comman_Text(
                        color: Colors.black,
                        text: pageview[index]['name'],
                        fontweight: FontWeight.bold,
                        fontsize: 27,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Comman_Text(
                        color: Colors.grey,
                        text: pageview[index]['subtitle'],
                        fontweight: FontWeight.bold,
                        fontsize: 18,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 120,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  3,
                  (index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        child: CircleAvatar(
                          radius: 5,
                          backgroundColor: selected == index
                              ? Color(0xff40916C)
                              : Color(0xff74C69D),
                        ),
                      )),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Comman_Container(
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Enter_mobile(),
                      ));
                },
                child: Center(
                  child: Comman_Text(
                    text: "Get Started!",
                    fontsize: 18,
                    color: Colors.white,
                  ),
                ),
                height: height * 0.07,
                BorderRadius: BorderRadius.circular(10),
                color: Color(0xffB7E4C7),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
