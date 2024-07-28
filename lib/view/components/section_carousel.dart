import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:site_dev/view_model/home_view_model.dart';

buildSectionCarousel() {
  return Consumer<HomeViewModel>(builder: (context, homeViewModel, child) {
    return Container(
      height: 140.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(14.0),
            child: Text(
              'Habilidades',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          CarouselSlider(
              items: homeViewModel.carousel.map((item) {
                return Builder(builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      color: (homeViewModel.dark_mode
                          ? homeViewModel.darkColor
                          : homeViewModel.lightColor),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Center(
                      child: Text(
                        item,
                        style: TextStyle(
                            fontSize: 16.0,
                            color: (homeViewModel.dark_mode
                                ? homeViewModel.lightColor
                                : homeViewModel.darkColor)),
                      ),
                    ),
                  );
                });
              }).toList(), // Convertendo Iterable para List<Widget>,
              options: CarouselOptions(
                height: 90.0,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 7),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.decelerate,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                // onPageChanged: callbackFunction,
                scrollDirection: Axis.horizontal,
              )),
        ],
      ),
    );
  });
}
