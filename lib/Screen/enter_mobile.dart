import 'package:country_picker/country_picker.dart';
import 'package:fashionhub_xd/Comman_weigets/Comman_Container.dart';
import 'package:fashionhub_xd/Comman_weigets/Comman_TeextFiled.dart';
import 'package:fashionhub_xd/Comman_weigets/Comman_text.dart';
import 'package:fashionhub_xd/Screen/verify_screen.dart';
import 'package:flutter/material.dart';

class Enter_mobile extends StatefulWidget {
  @override
  State<Enter_mobile> createState() => _Enter_mobileState();
}

class _Enter_mobileState extends State<Enter_mobile> {
  String countryCode = "91";
  String countryFlage = "";
  final phoneno = TextEditingController();
  final gloablekey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: gloablekey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'asserts/image/bg.png',
                fit: BoxFit.cover,
                height: height * 0.3,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Comman_Text(
                  color: Colors.grey,
                  text:
                      "Please enter your phone number to\nverify your account",
                  fontsize: 20,
                  fontweight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Comman_TexxtFiled(
                  FocusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  keyboardType: TextInputType.phone,
                  labletext: "Enter Number",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focouseborder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  disableborder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hinttext: "Enter number",
                  controller: phoneno,
                  maxLength: 10,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Plz Enter Number";
                    }
                  },
                  onChanged: (value) {
                    setState(() {
                      gloablekey.currentState!.validate();
                    });
                  },
                  sufficicon: phoneno.text.length == 10
                      ? Icon(Icons.check_circle, color: Color(0xffFB847C))
                      : SizedBox(),
                  prefixicon: Padding(
                    padding: const EdgeInsets.only(left: 15, top: 0, right: 10),
                    child: InkWell(
                      onTap: () {
                        showCountryPicker(
                          context: context,
                          countryListTheme: CountryListThemeData(
                            flagSize: 25,
                            backgroundColor: Colors.white,
                            textStyle:
                                TextStyle(fontSize: 16, color: Colors.blueGrey),
                            bottomSheetHeight:
                                500, // Optional. Country list modal height
                            //Optional. Sets the border radius for the bottomsheet.
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                            ),
                            //Optional. Styles the search field.
                            inputDecoration: InputDecoration(
                              labelText: 'Search',
                              hintText: 'Start typing to search',
                              prefixIcon: const Icon(Icons.search),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:
                                      const Color(0xFF8C98A8).withOpacity(0.2),
                                ),
                              ),
                            ),
                          ),
                          showPhoneCode: true,
                          onSelect: (Country country) {
                            setState(() {
                              countryCode = country.phoneCode;
                              countryFlage = country.flagEmoji;
                            });
                          },
                        );
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("+${countryCode}"),
                          Text(countryFlage.isEmpty ? "" : countryFlage),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.3,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Comman_Container(
                  ontap: () {
                    if (gloablekey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Verify_Screen(),
                          ));
                    }
                  },
                  child: Center(
                    child: Comman_Text(
                      text: "Send Verification Code",
                      fontsize: 18,
                      color: Colors.white,
                    ),
                  ),
                  height: height * 0.07,
                  BorderRadius: BorderRadius.circular(10),
                  color: Color(0xffB7E4C7),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: TextButton(
                    onPressed: () {},
                    child: Comman_Text(
                      text: "Skip",
                      color: Colors.black,
                      fontweight: FontWeight.w400,
                      fontsize: 18,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
