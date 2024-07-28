import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:provider/provider.dart';
import 'package:site_dev/view_model/home_view_model.dart';

buildSectionProjects() {
  return Consumer<HomeViewModel>(builder: (context, homeViewModel, chil) {
    return Container(
      height: 400.0,
      color: homeViewModel.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(14.0),
            child: Text(
              "Projetos",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          Expanded(
            child: Container(
              height: 300.0,
              child: LayoutGrid(
                columnGap: 12,
                rowGap: 12,
                areas: '''
          r R B B  B
          r R Y Y  Y
          y R Y Y  Y
          y R g b yy
                  ''',
                // A number of extension methods are provided for concise track sizing
                columnSizes: [1.0.fr, 3.5.fr, 1.3.fr, 1.3.fr, 1.3.fr],
                rowSizes: [
                  1.0.fr,
                  0.3.fr,
                  1.5.fr,
                  1.2.fr,
                ],
                children: [
                  // Column 1
                  gridArea('r').containing(Container(
                      color: (homeViewModel.dark_mode
                          ? homeViewModel.darkColor
                          : homeViewModel.lightColor))),
                  gridArea('y').containing(Container(
                      color: (homeViewModel.dark_mode
                          ? homeViewModel.darkColor
                          : homeViewModel.lightColor))),
                  // Column 2
                  gridArea('R').containing(Container(
                      color: (homeViewModel.dark_mode
                          ? homeViewModel.darkColor
                          : homeViewModel.lightColor))),
                  // Column 3
                  gridArea('B').containing(Container(
                      color: (homeViewModel.dark_mode
                          ? homeViewModel.darkColor
                          : homeViewModel.lightColor))),
                  gridArea('Y').containing(Container(
                      color: (homeViewModel.dark_mode
                          ? homeViewModel.darkColor
                          : homeViewModel.lightColor))),
                  gridArea('g').containing(Container(
                      color: (homeViewModel.dark_mode
                          ? homeViewModel.darkColor
                          : homeViewModel.lightColor))),
                  // Column 4
                  gridArea('b').containing(Container(
                      color: (homeViewModel.dark_mode
                          ? homeViewModel.darkColor
                          : homeViewModel.lightColor))),
                  // Column 5
                  gridArea('yy').containing(Container(
                      color: (homeViewModel.dark_mode
                          ? homeViewModel.darkColor
                          : homeViewModel.lightColor))),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  });
}
