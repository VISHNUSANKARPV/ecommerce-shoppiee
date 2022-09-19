import 'package:e_commerce/utils/theme/colors.dart';
import 'package:e_commerce/utils/widgets/field.dart';
import 'package:e_commerce/view/page_controller/view/page_controller.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/routes/screen_navigation.dart';
import '../../../../utils/theme/form_decoration.dart';
import '../../signup/view/signup.dart';

class LoginPage extends AppColors {
  LoginPage({Key? key}) : super(key: key);

  final bool _isLoading = false;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final cx = MediaQuery.of(context).size.width;
    return Scaffold(
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.cyan,
              ),
            )
          : SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 14, right: 14, top: 40),
                child: Form(
                    key: formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                          "Happiness is not in money, but in shopping.",
                          style: TextStyle(
                            color: textcolor,
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 180.h,
                          width: 330.w,
                          child: Image.asset(
                              "assets/couple-shopping-online-shop-illustration-concept-family-boy-girl-clothes-197073993.jpg",
                              fit: BoxFit.cover),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                       CustomTextField(label: "Email"),
                        const SizedBox(
                          height: 15,
                        ),
                        CustomTextField(label: "Password"),
                        Row(
                          children: [
                            const Spacer(),
                            TextButton(
                                onPressed: () {},
                                child:  Text(
                                  'Forgot password?',
                                  style: TextStyle(color: textcolor2),
                                )),
                          ],
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
                                _isLoading == true;
                                nextScreen(context,  NavigationPage());
                              },
                              child: const Text("Sign In")),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: (cx / 2) - 40,
                              child:  Divider(
                                thickness: 1,
                                color: textcolor,
                              ),
                            ),
                            const Text('Or'),
                            SizedBox(
                              width: (cx / 2) - 40,
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
                        const SizedBox(height: 20,),
                        Text.rich(TextSpan(
                            text: "Don't have an account?",
                            style:  TextStyle(
                                color: textcolor, fontSize: 15),
                            children: [
                              TextSpan(
                                  text: " Register here",
                                  style:  TextStyle(
                                      color: textcolor2, fontSize: 16),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      nextScreen(context, SignUpPage());
                                    })
                            ]))
                      ],
                    ),),
              ),
            ),
    );
  }
}