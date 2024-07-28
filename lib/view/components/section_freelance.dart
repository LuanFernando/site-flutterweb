import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:site_dev/view_model/home_view_model.dart';

buildFreelance() {
  return Consumer<HomeViewModel>(builder: (context, homeViewModel, child) {
    return Container(
      height: 300.0,
      color: (homeViewModel.dark_mode
          ? homeViewModel.darkColor
          : homeViewModel.lightColor),
      child: Center(
        child: Text('Freelance',
            style: TextStyle(
                fontSize: homeViewModel.intiSizeFonte,
                color: (homeViewModel.dark_mode
                    ? homeViewModel.lightColor
                    : homeViewModel.darkColor))),
      ),
    );
  });
}
