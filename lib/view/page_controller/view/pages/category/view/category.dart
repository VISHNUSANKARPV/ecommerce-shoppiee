import 'package:e_commerce/utils/theme/colors.dart';
import 'package:e_commerce/utils/widgets/categories.dart';
import 'package:flutter/material.dart';

class CatogoryScreen extends AppColors {
  const CatogoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backcolor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Categories",
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
                          itemCount: 7,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 6,
                                  crossAxisSpacing: 6,
                                  childAspectRatio: 0.9),
                          itemBuilder: (ctx, index) {
                            return const CategoryDesign();
                          }),
        ),
    );
  }
}
