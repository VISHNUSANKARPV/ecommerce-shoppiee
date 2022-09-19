import 'package:e_commerce/utils/theme/colors.dart';
import 'package:flutter/material.dart';

import '../../../utils/widgets/prduct_card.dart';

class Favourite extends AppColors {
  const Favourite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title:  Text(
          "Favourites",
          style: TextStyle(
              color: textcolor, fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            primary: false,
            physics: const BouncingScrollPhysics(),
            itemCount: 9,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 6,
                crossAxisSpacing: 6,
                childAspectRatio: 0.7),
            itemBuilder: (ctx, index) {
              return const ProductCard();
            }),
      ),
    );
  }
}
