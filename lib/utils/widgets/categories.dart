import 'package:e_commerce/utils/theme/colors.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class CategoryDesign extends AppColors {
  const CategoryDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.center,
      children: [
        Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)
          ),
          color: cardColor,
          child: InkWell(
            borderRadius: BorderRadius.circular(8),
            onTap: () {},
            child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: FancyShimmerImage(
                    // height: size.height * 0.2,
                
                    errorWidget: const Icon(
                      IconlyBold.danger,
                      color: Colors.red,
                      size: 15,
                    ),
                    imageUrl: "https://i.ibb.co/vwB46Yq/shoes.png")),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 6,left: 6,right: 6),
          child: Container(
            width: size.width*1,
            height: size.height*0.04,
            decoration: BoxDecoration(
               color: backcolor.withOpacity(0.8),
              borderRadius: BorderRadius.circular(30)
            ),
           
            child: Center(child: Text("Name",
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyle(color: textcolor,fontSize: 18,fontWeight: FontWeight.w600),)),
          ),
        )
      ],
    );;
  }
}