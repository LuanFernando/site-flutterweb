import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:site_dev/dimensions.dart';
import 'package:site_dev/view_model/home_view_model.dart';

class Responsive extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;

  Responsive({required this.mobileBody, required this.desktopBody});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeViewModel>(builder: (context, homeViewModel, child) {
      return LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < mobileWidth) {
          homeViewModel.responsiveMobile(true);
          return mobileBody;
        } else {
          homeViewModel.responsiveMobile(false);
          return desktopBody;
        }
      });
    });
  }
}
