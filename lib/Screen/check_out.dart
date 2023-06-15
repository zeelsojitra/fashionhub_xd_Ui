import 'package:flutter/material.dart';

import '../Comman_weigets/Comman_Container.dart';
import '../Comman_weigets/Comman_text.dart';

class Check_Out extends StatefulWidget {
  const Check_Out({Key? key}) : super(key: key);

  @override
  State<Check_Out> createState() => _Check_OutState();
}

class _Check_OutState extends State<Check_Out> {
  List delivery_method = [
    {
      'image': "asserts/delivery_method/dhl.png",
      'price': "\$15",
      'days': "1-2 Days",
    },
    {
      'image': "asserts/delivery_method/fed_ex.png",
      'price': "\$20",
      'days': "1-2 Days",
    },
    {
      'image': "asserts/delivery_method/blue_dart.png",
      'price': "\$18",
      'days': "1-2 Days",
    },
  ];
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
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
                  SizedBox(
                    width: 115,
                  ),
                  Center(
                    child: Comman_Text(
                      text: "Check Out",
                      fontweight: FontWeight.bold,
                      fontsize: 25,
                      color: Colors.white,
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
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.location_on_outlined,
                        color: Colors.grey,
                        size: 30,
                      ),
                    ),
                    Comman_Text(
                      text: "Shipping Address",
                      fontweight: FontWeight.w500,
                      fontsize: 25,
                      color: Colors.black87,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Comman_Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Comman_Text(
                              text: "Oleh Chabanov",
                              fontweight: FontWeight.w500,
                              fontsize: 18,
                              color: Colors.black,
                            ),
                            Spacer(),
                            Comman_Text(
                              text: "Chnage",
                              fontweight: FontWeight.w500,
                              fontsize: 18,
                              color: Colors.black,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Comman_Text(
                          text:
                              "225, Highland Area,\nSpringfield, Il 62704, USA",
                          fontweight: FontWeight.w500,
                          fontsize: 18,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                  height: height * 0.15,
                  width: width,
                  color: Colors.white,
                  BorderRadius: BorderRadius.circular(30),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.delivery_dining_outlined,
                        color: Colors.grey,
                        size: 30,
                      ),
                    ),
                    Comman_Text(
                      text: "Delivery Method",
                      fontweight: FontWeight.w500,
                      fontsize: 25,
                      color: Colors.black87,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: height * 0.112,
                  child: ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = index;
                          });
                        },
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 15,
                              ),
                              Image.asset(
                                delivery_method[index]['image'],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Comman_Text(
                                text: delivery_method[index]['price'],
                                fontweight: FontWeight.bold,
                                fontsize: 18,
                                color: Colors.black,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Comman_Text(
                                text: delivery_method[index]['days'],
                                fontweight: FontWeight.bold,
                                fontsize: 15,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          margin: EdgeInsets.only(left: 10, right: 10),
                          height: height * 0.03,
                          width: width * 0.25,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: selected == index
                                    ? Colors.amber
                                    : Colors.transparent,
                                width: 1,
                              ),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                  color: Colors.grey,
                                  offset: Offset(2, 2),
                                )
                              ]),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.payments_sharp,
                        color: Colors.grey,
                        size: 30,
                      ),
                    ),
                    Comman_Text(
                      text: "Payments Methods",
                      fontweight: FontWeight.w500,
                      fontsize: 25,
                      color: Colors.black87,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Comman_Container(
                  height: height * 0.09,
                  width: width,
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                  BorderRadius: BorderRadius.circular(15),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('asserts/delivery_method/master_card.png'),
                        SizedBox(
                          width: 20,
                        ),
                        Comman_Text(
                          text: "**** **** **** ** 45",
                          fontweight: FontWeight.bold,
                          fontsize: 18,
                          color: Colors.black,
                        ),
                        Spacer(),
                        Comman_Text(
                          text: "Chnage",
                          fontsize: 18,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 27,
          ),
          Comman_Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Comman_Text(
                        text: "items",
                        fontweight: FontWeight.w400,
                        fontsize: 20,
                        color: Colors.grey,
                      ),
                      Spacer(),
                      Comman_Text(
                        text: "\$199.89",
                        fontweight: FontWeight.w400,
                        fontsize: 20,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Comman_Text(
                        text: "Delivery",
                        fontweight: FontWeight.w400,
                        fontsize: 20,
                        color: Colors.grey,
                      ),
                      Spacer(),
                      Comman_Text(
                        text: "\$20",
                        fontweight: FontWeight.w400,
                        fontsize: 20,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Comman_Text(
                        text: "Total Price",
                        fontweight: FontWeight.w400,
                        fontsize: 22,
                        color: Colors.black,
                      ),
                      Spacer(),
                      Comman_Text(
                        text: "\$219.98",
                        fontweight: FontWeight.w400,
                        fontsize: 20,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => Dialog(
                          child: Stack(
                            children: [
                              Comman_Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 150),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 40),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Success",
                                              style: TextStyle(
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Text(
                                              "Your order will be delivered soon",
                                            ),
                                            Text(
                                              "It can be tracked in the Orders section.",
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Comman_Container(
                                              width: width,
                                              height: height * 0.05,
                                              child: Center(
                                                child: Comman_Text(
                                                  fontsize: 18,
                                                  text: "Continue Shopping",
                                                  color: Colors.white,
                                                ),
                                              ),
                                              color: Color(0xff95D5B2),
                                              BorderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Text(
                                              "Go to Order",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Color(0xff2D6A4F)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                height: height * 0.40,
                                width: width * 0.93,
                                BorderRadius: BorderRadius.circular(50),
                              ),
                              Positioned(
                                left: 0,
                                right: 0,
                                top: -180,
                                child: Container(
                                  height: 300,
                                  width: 300,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xff2D6A4F),
                                        Color(0xff95D5B2),
                                      ],
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 160),
                                    child: Icon(
                                      Icons.check_circle_outlined,
                                      size: 60,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    child: Comman_Container(
                      child: Center(
                        child: Comman_Text(
                          text: "Pay",
                          color: Colors.white,
                          fontsize: 20,
                          fontweight: FontWeight.w400,
                        ),
                      ),
                      height: height * 0.06,
                      width: width,
                      color: Color(0xff95D5B2),
                      BorderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ],
              ),
            ),
            height: height * 0.23,
            width: width,
            color: Colors.white,
            BorderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
        ],
      ),
    );
  }
}
