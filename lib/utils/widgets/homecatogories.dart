import 'package:e_commerce/utils/theme/colors.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class HomeCategorie extends AppColors {
  const HomeCategorie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        color: Colors.teal.shade100,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.4),
              offset: const Offset(0, 10),
              blurRadius: 20)
        ],
        
      ),
      child:FancyShimmerImage(
                    // height: size.height * 0.2,
                
                    errorWidget: const Icon(
                      IconlyBold.danger,
                      color: Colors.red,
                      size: 15,
                    ),
                    imageUrl: "https://i.ibb.co/vwB46Yq/shoes.png"),
    );
  }
}
