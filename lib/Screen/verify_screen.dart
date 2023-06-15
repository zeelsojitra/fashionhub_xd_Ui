import 'package:fashionhub_xd/Comman_weigets/Comman_Container.dart';
import 'package:fashionhub_xd/Comman_weigets/Comman_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import 'home_page.dart';

class Verify_Screen extends StatefulWidget {
  const Verify_Screen({Key? key}) : super(key: key);

  @override
  State<Verify_Screen> createState() => _Verify_ScreenState();
}

class _Verify_ScreenState extends State<Verify_Screen> {
  final globalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: globalKey,
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
                  text: "Please enter Code sent to",
                  fontsize: 20,
                  fontweight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Comman_Text(
                      text: "+91 123 456 7890",
                      color: Colors.black,
                      fontweight: FontWeight.bold,
                      fontsize: 20,
                    ),
                    Comman_Text(
                      decoration: TextDecoration.underline,
                      text: "Change phone Number",
                      color: Colors.green,
                      fontweight: FontWeight.w500,
                      fontsize: 18,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              OtpTextField(
                numberOfFields: 4,
                autoFocus: true,
                borderColor: Color(0xFF512DA8),
                //set to true to show as box or false to show as dash
                showFieldAsBox: false,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Verification Code"),
                          content: Text('Code entered is $verificationCode'),
                        );
                      });
                }, // end onSubmit
              ),
              SizedBox(
                height: height * 0.37,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Comman_Container(
                  ontap: () {
                    if (globalKey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home_page(),
                          ));
                    }
                  },
                  child: Center(
                    child: Comman_Text(
                      text: "Continue",
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
                      text: "Resend Otp!",
                      color: Colors.black,
                      fontweight: FontWeight.w400,
                      fontsize: 18,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
