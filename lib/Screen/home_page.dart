import 'package:fashionhub_xd/Comman_weigets/Comman_Container.dart';
import 'package:fashionhub_xd/Comman_weigets/Comman_TeextFiled.dart';
import 'package:fashionhub_xd/Comman_weigets/Comman_text.dart';
import 'package:fashionhub_xd/Comman_weigets/like.dart';
import 'package:flutter/material.dart';

class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  List Pageview = [
    {
      'image': "asserts/pageview/pageview1.jpg",
      'title': "Fashion sale",
      "subtitile": "See More >"
    },
    {
      'image': "asserts/pageview/pageview2.jpg",
      'title': "Fashion sale",
      "subtitile": "See More >"
    },
    {
      'image': "asserts/pageview/pageview3.jpg",
      'title': "Fashion sale",
      "subtitile": "See More >"
    },
  ];
  List Catalogue = [
    {
      'image': "asserts/catlogue/womens.jpg",
      'name': "Women's\nFashion",
    },
    {
      'image': "asserts/catlogue/men.jpg",
      'name': "Men's\nFashion",
    },
    {
      'image': "asserts/catlogue/laptop.jpg",
      'name': "Phones",
    },
    {
      'image': "asserts/catlogue/computer.jpg",
      'name': "Computers",
    },
  ];
  List Gridviewlist = [
    {
      'imge': "asserts/gridview/gridview1.png",
      'imge1': "asserts/gridview/star.png",
      'name': "Style Womens\nTurtleneck Oversized... ",
      'price': "\$49",
      'price1': "\$99",
    },
    {
      'imge': "asserts/gridview/gridview2.png",
      'imge1': "asserts/gridview/star.png",
      'name': "Stylish Women Open\nFront Long Sleeve Ch... ",
      'price': "\$69.99",
      'price1': "",
    },
    {
      'imge': "asserts/gridview/gridview1.png",
      'imge1': "asserts/gridview/star.png",
      'name': "Style Womens\nTurtleneck Oversized... ",
      'price': "\$49",
      'price1': "\$99",
    },
    {
      'imge': "asserts/gridview/gridview2.png",
      'imge1': "asserts/gridview/star.png",
      'name': "Stylish Women Open\nFront Long Sleeve Ch... ",
      'price': "\$69.99",
      'price1': "",
    },
  ];
  List iconn = [
    Icon(Icons.home_outlined, color: Color(0xff74C69D)),
    Icon(Icons.grid_view, color: Color(0xff74C69D)),
    Icon(Icons.shopping_cart_outlined, color: Color(0xff74C69D)),
    Icon(Icons.favorite_outline, color: Color(0xff74C69D)),
    Icon(Icons.share, color: Color(0xff74C69D)),
    Icon(Icons.privacy_tip_outlined, color: Color(0xff74C69D)),
    Icon(Icons.logout, color: Color(0xff74C69D)),
  ];
  List text1 = [
    "Home",
    "Shop by category",
    "Your Orders",
    "Your Wish List",
    "Share",
    "Privacy Policy",
    "Logout",
  ];
  int selected = 0;
  final globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: globalKey,
      backgroundColor: Color(0xfff0f0f0),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Comman_Container(
                width: width,
                height: height * 0.17,
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
                BorderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 70, right: 20, left: 20),
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                globalKey.currentState!.openDrawer();
                              },
                              icon: Icon(
                                Icons.menu,
                                color: Colors.white,
                                size: 25,
                              )),
                          SizedBox(
                            width: width * 0.08,
                          ),
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
                            color: Colors.yellowAccent,
                            fontsize: 40,
                            fontweight: FontWeight.bold,
                          ),
                          SizedBox(
                            width: 38,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.notifications_active_outlined,
                                color: Colors.black,
                                size: 27,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 135,
                left: 25,
                child: Comman_Container(
                  height: height * 0.09,
                  width: width / 1.11,
                  child: Comman_TexxtFiled(
                    filled: true,
                    fillcolor: Colors.white,
                    prefixicon: Icon(
                      Icons.search_rounded,
                      color: Colors.black,
                      size: 25,
                    ),
                    hinttext: "What are you looking for?",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide.none,
                    ),
                    focouseborder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide.none,
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide.none,
                    ),
                    disableborder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                      height: height * 0.19,
                      child: Stack(
                        children: [
                          PageView(
                            onPageChanged: (value) {
                              setState(() {
                                selected = value;
                              });
                            },
                            children: List.generate(
                              3,
                              (index) => Comman_Container(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 20, horizontal: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Comman_Text(
                                        text: Pageview[index]['title'],
                                        color: Colors.white,
                                        fontweight: FontWeight.w400,
                                        fontsize: 27,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Comman_Text(
                                        text: Pageview[index]['subtitile'],
                                        color: Colors.white,
                                        fontweight: FontWeight.w400,
                                        fontsize: 20,
                                      )
                                    ],
                                  ),
                                ),
                                width: width,
                                color: Colors.red,
                                BorderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    Pageview[index]['image'],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 15,
                            right: 0,
                            left: 0,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(
                                  3,
                                  (index) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2),
                                    child: CircleAvatar(
                                      radius: 5,
                                      backgroundColor: selected == index
                                          ? Colors.green
                                          : Colors.white,
                                    ),
                                  ),
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 25, horizontal: 20),
                    child: Row(
                      children: [
                        Comman_Text(
                          text: "Catalogue",
                          color: Colors.black,
                          fontweight: FontWeight.bold,
                          fontsize: 25,
                        ),
                        Spacer(),
                        Comman_Text(
                          text: "See All",
                          color: Colors.grey,
                          fontweight: FontWeight.w400,
                          fontsize: 21,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Comman_Text(
                          text: ">",
                          color: Colors.grey,
                          fontweight: FontWeight.w400,
                          fontsize: 22,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: SizedBox(
                      height: height * 0.15,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) => Comman_Container(
                          child: Center(
                            child: Comman_Text(
                              text: Catalogue[index]['name'],
                              color: Colors.white,
                              fontsize: 18,
                              fontweight: FontWeight.bold,
                            ),
                          ),
                          margin: EdgeInsets.only(right: 10),
                          height: height * 0.5,
                          width: width * 0.37,
                          BorderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            colorFilter: ColorFilter.mode(
                                Colors.black54, BlendMode.darken),
                            fit: BoxFit.cover,
                            image: AssetImage(
                              Catalogue[index]['image'],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Comman_Text(
                          text: "Featured",
                          color: Colors.black,
                          fontweight: FontWeight.bold,
                          fontsize: 25,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.65,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: GridView.builder(
                        itemCount: 4,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisExtent: 270,
                          crossAxisSpacing: 2,
                          mainAxisSpacing: 20,
                        ),
                        itemBuilder: (context, index) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Comman_Container(
                                  height: height * 0.2,
                                  width: width * 0.6,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      Gridviewlist[index]['imge'],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: -20,
                                  child: Like(),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Comman_Text(
                              text: Gridviewlist[index]['name'],
                              fontsize: 18,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Comman_Text(
                                  text: Gridviewlist[index]['price'],
                                  fontsize: 18,
                                  color: Colors.red,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Comman_Text(
                                  decoration: TextDecoration.lineThrough,
                                  text: Gridviewlist[index]['price1'],
                                  fontsize: 18,
                                  color: Colors.black54,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Stack(
              children: [
                DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: UserAccountsDrawerHeader(
                    accountName: Comman_Text(
                      text: "Oleh Chabanov",
                      fontsize: 20,
                    ),
                    accountEmail: Comman_Text(
                      text: "+91 123 456 7890",
                      fontsize: 14,
                    ),
                    currentAccountPicture: CircleAvatar(
                        foregroundColor: Colors.amber,
                        backgroundImage: AssetImage(
                          'asserts/profile.png',
                        )),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xff2D6A4F),
                          Color(0xff95D5B2),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(140),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 25,
                  left: 230,
                  child: CircleAvatar(
                    radius: 21,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.edit_outlined, color: Colors.green),
                  ),
                ),
              ],
            ),
            Column(
              children: List.generate(
                  7,
                  (index) => Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        child: Container(
                          height: height * 0.065,
                          width: width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 4,
                                    offset: Offset(2, 2))
                              ],
                              borderRadius: BorderRadius.circular(13)),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 15,
                              ),
                              iconn[index],
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                text1[index],
                                style: TextStyle(
                                    fontSize: 18, color: Color(0xff2D6A4F)),
                              )
                            ],
                          ),
                        ),
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
