
import 'package:e_commerce/utils/theme/colors.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class ProductCard extends AppColors {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Card(
      color: Colors.teal.shade100,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft:  Radius.circular(15), topRight:  Radius.circular(15))),
      elevation: 1.5,
      shadowColor: Colors.black,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: FancyShimmerImage(
                    height: size.height / 7,
                    width: size.width * 0.5,
                    errorWidget: const Icon(
                      IconlyBold.danger,
                      color: Colors.red,
                      size: 26,
                    ),
                    imageUrl: "https://i.ibb.co/vwB46Yq/shoes.png"),
              ),
              Align(
                widthFactor: 1.5,
                child: Text(
                  "Title",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: size.height / 60),
                ),
              ),
             SizedBox(height: 6,),
              Align(
                widthFactor: 1.2,
                child: RichText(
              maxLines: 1,
              text:  TextSpan(
                  text: '\$',
                  style: const TextStyle(color: Colors.blue),
                  children: <TextSpan>[
                    TextSpan(
                        text: "1685.00",
                        style: TextStyle(
                          fontSize:  size.height / 55,
                            color: Colors.black,
                            fontWeight: FontWeight.w600))
                  ]),
                ),
              ),
             SizedBox(height: 6,)

            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8,right: 5),
            child: Align(
              alignment: Alignment.topRight,
             
              child: Icon(IconlyBold.heart,size: 18,)),
          )
        ],
      ),
    );
  }
}
