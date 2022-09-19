import 'package:e_commerce/utils/theme/colors.dart';
import 'package:e_commerce/utils/widgets/homecatogories.dart';
import 'package:flutter/material.dart';

class CartScreen extends AppColors {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
             backgroundColor: backcolor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: HomeCategorie(),
    );
  }
}
