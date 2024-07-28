import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:site_dev/view_model/home_view_model.dart';

buildFooter() {
  return Consumer<HomeViewModel>(builder: (context, homeViewModel, child) {
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
            'Feito por MQ',
            style: TextStyle(
                color: (homeViewModel.dark_mode
                    ? homeViewModel.lightColor
                    : homeViewModel.darkColor)),
          ),
        ],
      ),
    );
  });
}
