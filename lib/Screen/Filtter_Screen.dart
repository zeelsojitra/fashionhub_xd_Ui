import 'package:fashionhub_xd/Comman_weigets/Comman_Container.dart';
import 'package:fashionhub_xd/Comman_weigets/Comman_text.dart';
import 'package:flutter/material.dart';

class Filter_Screen extends StatefulWidget {
  const Filter_Screen({Key? key}) : super(key: key);

  @override
  State<Filter_Screen> createState() => _Filter_ScreenState();
}

class _Filter_ScreenState extends State<Filter_Screen> {
  double Start = 0;
  double end = 5000;
  int selected = 0;
  int size_selected = 0;
  List color = [
    Colors.black,
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.purpleAccent,
    Colors.amberAccent,
    Colors.tealAccent,
  ];
  List size = [
    'XXS',
    'XS',
    'S',
    'M',
    'L',
    'XL',
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Comman_Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.keyboard_backspace_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  Spacer(),
                  Center(
                    child: Comman_Text(
                      text: "Filter",
                      fontweight: FontWeight.bold,
                      fontsize: 25,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.delete_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            height: height * 0.14,
            width: width,
            BorderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            gradient: LinearGradient(colors: [
              Color(0xff2D6A4F),
              Color(0xff95D5B2),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Comman_Text(
                  text: "Price",
                  fontweight: FontWeight.w500,
                  color: Colors.grey,
                  fontsize: 18,
                ),
                SliderTheme(
                  data: SliderThemeData(
                    trackHeight: 3,
                    thumbColor: Colors.white,
                    inactiveTrackColor: Colors.grey,
                    activeTrackColor: Colors.amber,
                  ),
                  child: RangeSlider(
                    values: RangeValues(Start, end),
                    min: 0,
                    max: 5000,
                    onChanged: (value) {
                      setState(() {
                        Start = value.start;
                        end = value.end;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Comman_Container(
                  height: height * 0.06,
                  width: width,
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                  BorderRadius: BorderRadius.circular(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Comman_Text(
                        text: "${Start.toStringAsFixed(0)}",
                        fontsize: 18,
                      ),
                      VerticalDivider(
                        color: Colors.grey.shade400,
                        thickness: 1.5,
                      ),
                      Comman_Text(
                        text: "${end.toStringAsFixed(0)}",
                        fontsize: 18,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Comman_Text(
                  text: "Categories",
                  fontweight: FontWeight.w500,
                  color: Colors.grey,
                  fontsize: 18,
                ),
                SizedBox(
                  height: 10,
                ),
                Comman_Container(
                  height: height * 0.06,
                  width: width,
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                  BorderRadius: BorderRadius.circular(15),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Comman_Text(
                          text: "Dresses",
                          fontsize: 18,
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Comman_Text(
                  text: "Brand",
                  fontweight: FontWeight.w500,
                  color: Colors.grey,
                  fontsize: 18,
                ),
                SizedBox(
                  height: 10,
                ),
                Comman_Container(
                  height: height * 0.06,
                  width: width,
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                  BorderRadius: BorderRadius.circular(15),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Comman_Text(
                          text: "Lark & Ro, Astylish, ECOWISH, Angashion",
                          fontsize: 16,
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Comman_Text(
                  text: "Colors",
                  fontweight: FontWeight.w500,
                  color: Colors.grey,
                  fontsize: 18,
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                    7,
                    (index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = index;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              width: 2,
                              color: selected == index
                                  ? Colors.amber
                                  : Colors.transparent),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: color[index],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Comman_Text(
                  text: "Sizes",
                  fontweight: FontWeight.w500,
                  color: Colors.grey,
                  fontsize: 18,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: List.generate(
                    6,
                    (index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          size_selected = index;
                        });
                      },
                      child: Container(
                        height: 45,
                        width: 45,
                        margin: EdgeInsets.only(left: 9, right: 9),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(1, 1),
                            )
                          ],
                          border: Border.all(
                              color: size_selected == index
                                  ? Colors.grey.shade300
                                  : Colors.transparent),
                          borderRadius: BorderRadius.circular(10),
                          color: size_selected == index
                              ? Color(0xff95D5B2)
                              : Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            size[index],
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Comman_Text(
                  text: "Sorted by",
                  fontweight: FontWeight.w500,
                  color: Colors.grey,
                  fontsize: 18,
                ),
                SizedBox(
                  height: 20,
                ),
                Comman_Container(
                  height: height * 0.06,
                  width: width,
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                  BorderRadius: BorderRadius.circular(15),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Comman_Text(
                          text: "Featured",
                          fontsize: 16,
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Comman_Container(
                  child: Center(
                    child: Comman_Text(
                      text: "Results (186)",
                      color: Colors.white,
                      fontsize: 20,
                      fontweight: FontWeight.w400,
                    ),
                  ),
                  height: height * 0.06,
                  width: width,
                  color: Color(0xff95D5B2),
                  BorderRadius: BorderRadius.circular(15),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
