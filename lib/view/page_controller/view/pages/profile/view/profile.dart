import 'package:e_commerce/utils/theme/colors.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends AppColors {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: backcolor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
    );
  }
}
