
import 'package:e_commerce/view/page_controller/cubit/cubit.dart';
import 'package:e_commerce/view/page_controller/view/pages/cart/view/cart_page.dart';
import 'package:e_commerce/view/page_controller/view/pages/category/view/category.dart';
import 'package:e_commerce/view/page_controller/view/pages/home/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'pages/profile/view/profile.dart';

class NavigationPage extends StatelessWidget {
  NavigationPage({Key? key}) : super(key: key);

  final PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
   return BlocProvider(
        create: (context) => PageControllerCubit(),
        child: Builder(
            builder: (context) => Scaffold(
                  body: PageView(
                    controller: pageController,
                    onPageChanged: (value) {},
                    children: [
                      HomeScreen(),
                      const CatogoryScreen(),
                      const CartScreen(),
                      const ProfileScreen(),
                    ],
                  ),
                  bottomNavigationBar: BottomNavigationBar(
                    backgroundColor: Colors.white,
                    type: BottomNavigationBarType.fixed,
                    selectedItemColor: Colors.black,
                    selectedFontSize: 11.0,
                    unselectedItemColor: Colors.black38,
                    unselectedFontSize: 11.0,
                    currentIndex: context
                        .select((PageControllerCubit element) => element.state),
                    onTap: (newIndex) {
                      context.read<PageControllerCubit>().pageChanged(newIndex);
                    },
                    items: const [
                      BottomNavigationBarItem(
                          icon: Icon(Icons.home), label: "Home"),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.category), label: "Category"),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.card_travel), label: "Cart"),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.account_circle), label: "Account")
                    ],
                  ),
                )));
  }
}
