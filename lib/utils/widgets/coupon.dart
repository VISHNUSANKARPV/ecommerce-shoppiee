import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class CoupnCard extends StatelessWidget {
  const CoupnCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ImageSlideshow(
        width: double.infinity,
        height: 130,
        initialPage: 0,
        indicatorColor: Colors.blue,
        indicatorBackgroundColor: Colors.grey,
        onPageChanged: (value) {},
        autoPlayInterval: 5000,
        isLoop: true,
        children: [
          ClipRRect(
         borderRadius: BorderRadius.circular(15),
            child: Image.asset('assets/images.jpeg', fit: BoxFit.cover)),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset('assets/movie-ticket-offers.jpg', fit: BoxFit.cover)),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset('assets/1659245424_Mobile_Push-NMS100.jpg', fit: BoxFit.cover)),
         
        ]);
  }
}