import 'package:flutter/material.dart';
import 'package:site_dev/view_model/home_view_model.dart';

Widget actionMobile(HomeViewModel homeViewModel, BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.code,
            color: (homeViewModel.dark_mode
                ? homeViewModel.lightColor
                : homeViewModel.darkColor),
          ),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    homeViewModel.diminueZoomPage();
                  },
                  icon: Icon(
                    Icons.zoom_out,
                    color: (homeViewModel.dark_mode
                        ? homeViewModel.lightColor
                        : homeViewModel.darkColor),
                  )),
              IconButton(
                  onPressed: () {
                    homeViewModel.aumentaZoomPage();
                  },
                  icon: Icon(
                    Icons.zoom_in,
                    color: (homeViewModel.dark_mode
                        ? homeViewModel.lightColor
                        : homeViewModel.darkColor),
                  )),
              IconButton(
                  onPressed: () {
                    homeViewModel.mode();
                  },
                  icon: (homeViewModel.dark_mode
                      ? Icon(
                          Icons.dark_mode,
                          color: (homeViewModel.dark_mode
                              ? homeViewModel.lightColor
                              : homeViewModel.darkColor),
                        )
                      : Icon(
                          Icons.light_mode,
                          color: (homeViewModel.dark_mode
                              ? homeViewModel.lightColor
                              : homeViewModel.darkColor),
                        ))),
              const SizedBox(
                width: 14.0,
              ),
              Builder(builder: (context) {
                return IconButton(
                    onPressed: () {
                      // Scaffold.of(context).openDrawer(); // abre a esquerda
                      Scaffold.of(context).openEndDrawer();
                    },
                    icon: Icon(
                      Icons.menu,
                      color: (homeViewModel.dark_mode
                          ? homeViewModel.lightColor
                          : homeViewModel.darkColor),
                    ));
              }),
            ],
          ),
        ],
      ),
    ],
  );
}
