import 'package:e_commerce/utils/theme/colors.dart';
import 'package:e_commerce/utils/widgets/field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/routes/screen_navigation.dart';
import '../../../../utils/theme/form_decoration.dart';
import '../../signin/view/login_page.dart';

class SignUpPage extends AppColors {
  SignUpPage({Key? key}) : super(key: key);

  final bool _isLoading = false;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final cx = MediaQuery.of(context).size;
    return Scaffold(
      body: _isLoading
          ?  Center(
              child: CircularProgressIndicator(
                color: textcolor,
              ),
            )
          : SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Form(
                    key: formKey,
                    child: SafeArea(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                      
                        children: [
                           Text(
                            "Shopiee",
                            style: TextStyle(
                              color: textcolor,
                                fontSize: 40, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                           Text(
                            "Create your account  and explore",
                            style: TextStyle(
                              color: textcolor,
                                fontSize: 15, fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 160.h,
                            width: 350.w,
                            child: Image.asset(
                              "assets/online-shopping-application-vector-illustration-cartoon-tiny-flat-man-woman-buyer-characters-buying-clothes-and-accessories-using-mobile-shop-app-clothing-internet-store-concept-isolated-on-white-2CBA10M.jpg",
                              fit: BoxFit.contain,
                            ),
                          ),
                          
                         CustomTextField(label: "Fullname"),
                        
                         CustomTextField(label: "Email"),
                      
                          CustomTextField(label: "Password"),
                         
                          CustomTextField(label: "Confirm passwor"),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.teal,
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30))),
                                onPressed: () {
                                  // nextScreen(context,const HomeScreen());
                                },
                                child: const Text("Sign Up")),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: (cx.width / 2) - 40,
                                child:  Divider(
                                  thickness: 1,
                                  color: textcolor,
                                ),
                              ),
                              const Text('Or'),
                              SizedBox(
                                width: (cx.width / 2) - 40,
                                child:  Divider(
                                  thickness: 1,
                                  color: textcolor,
                                ),
                              )
                            ],
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: SizedBox(
                                height: 50,
                                width: 100,
                                child: Image.asset(
                                    "assets/images-removebg-preview.png")),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text.rich(TextSpan(
                              text: "Already have an account?",
                              style:  TextStyle(
                                  color: textcolor, fontSize: 15),
                              children: [
                                TextSpan(
                                    text: " Login Now",
                                    style:  TextStyle(
                                        color: textcolor2, fontSize: 16),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.pop(context);
                                      })
                              ]))
                        ],
                      ),
                    )),
              ),
            ),
    );
  }
}
