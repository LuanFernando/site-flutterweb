import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:site_dev/view_model/home_view_model.dart';

buildContact() {
  return Consumer<HomeViewModel>(builder: (context, homeViewModel, child) {
    return Container(
      height: 300.0,
      color: (homeViewModel.dark_mode
          ? homeViewModel.darkColor
          : homeViewModel.lightColor),
      child: Center(
        child: Text(
          'Contact',
          style: TextStyle(
            color: (homeViewModel.dark_mode
                ? homeViewModel.lightColor
                : homeViewModel.darkColor),
          ),
        ),
      ),
    );
  });
}
