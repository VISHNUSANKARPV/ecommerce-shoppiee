import 'package:e_commerce/utils/routes/screen_navigation.dart';
import 'package:e_commerce/utils/theme/colors.dart';
import 'package:e_commerce/utils/widgets/coupon.dart';
import 'package:e_commerce/utils/widgets/homecatogories.dart';
import 'package:e_commerce/utils/widgets/prduct_card.dart';
import 'package:e_commerce/view/favourite/view/favpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class HomeScreen extends AppColors {
  HomeScreen({Key? key}) : super(key: key);

 final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: backcolor,
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text(
              "Home",
              style: TextStyle(
                  color: textcolor,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  shadows: [
                    BoxShadow(
                        offset: Offset(1, 1),
                        color: Color.fromARGB(255, 46, 105, 152))
                  ]),
            ),
            actions: [
              IconButton(
                  onPressed: () {
                    nextScreen(context, Favourite());
                  },
                  icon: Icon(
                    IconlyBold.heart,
                    color: textcolor,
                  ))
            ]),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: MediaQuery.of(context).size.width / 1,
                height: 50.0,
                padding: const EdgeInsets.only(
                    top: 15.0, bottom: 0.0, left: 16, right: 16),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    color: backcolor,
                    boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.4),
              offset: const Offset(0, 10),
              blurRadius: 20)
        ],),
                child: Center(
                  child: TextField(
                    keyboardType: TextInputType.text,
                    controller: _searchController,
                    onChanged: (value) {},
                    style: TextStyle(color: textcolor),
                    cursorColor: Colors.red,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      hintText: "Search...",
                      hintStyle: TextStyle(color: textcolor),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(10),
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.all(8.0),
                      child:  SizedBox(
                        
                        child: CoupnCard()),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Categories",
                              style: TextStyle(
                                  color: textcolor,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold)),
                          GestureDetector(
                            onTap: () {
                              
                            },
                            child: Text(
                              "view all",
                              style: TextStyle(color: textcolor2, fontSize: 14),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 70,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: 4,
                        itemBuilder: (BuildContext context, int index) {
                          return const Padding(
                            padding: EdgeInsets.only(left: 6, right: 6),
                            child: HomeCategorie(),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 6, right: 10, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Featured Products",
                              style: TextStyle(
                                  color: textcolor,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold)),
                          Text(
                            "view all",
                            style: TextStyle(color: textcolor2, fontSize: 14),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    GridView.builder(
                        shrinkWrap: true,
                        primary: false,
                        itemCount: 5,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                mainAxisSpacing: 6,
                                crossAxisSpacing: 6,
                                childAspectRatio: 0.7),
                        itemBuilder: (ctx, index) {
                          return const ProductCard();
                        }),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
