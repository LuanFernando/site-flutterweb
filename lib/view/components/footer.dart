import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:site_dev/view_model/home_view_model.dart';

buildFooter() {
  return Consumer<HomeViewModel>(builder: (context, homeViewModel, child) {
    final Shader feitoPorMQ = LinearGradient(colors: [
      Color(0XFF009788),
      (homeViewModel.dark_mode
          ? homeViewModel.lightColor
          : homeViewModel.darkColor)
    ]).createShader(Rect.fromLTWH(0, 100, 50, 2));

    //
    return Container(
      height: 100.0,
      color: (homeViewModel.dark_mode
          ? homeViewModel.darkColor
          : homeViewModel.lightColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'FEITO POR MQ',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                foreground: Paint()..shader = feitoPorMQ,
                // color: (homeViewModel.dark_mode
                //     ? homeViewModel.lightColor
                //     : homeViewModel.darkColor),
                shadows: [
                  Shadow(
                      offset: Offset(10, 10),
                      blurRadius: 20,
                      color: (homeViewModel.dark_mode
                          ? homeViewModel.lightColor
                          : homeViewModel.darkColor)),
                ]),
          ),
        ],
      ),
    );
  });
}
