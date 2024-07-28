import 'package:flutter/material.dart';
import 'package:site_dev/view_model/home_view_model.dart';

List<Widget> actionDesktop(HomeViewModel homeViewModel) {
  return [
    TextButton(
        onPressed: () {},
        child: Text(
          'Sobre',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              color: (homeViewModel.dark_mode
                  ? homeViewModel.lightColor
                  : homeViewModel.darkColor)),
        )),
    TextButton(
        onPressed: () {},
        child: Text(
          'Habilidades',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              color: (homeViewModel.dark_mode
                  ? homeViewModel.lightColor
                  : homeViewModel.darkColor)),
        )),
    TextButton(
        onPressed: () {},
        child: Text(
          'Projetos',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              color: (homeViewModel.dark_mode
                  ? homeViewModel.lightColor
                  : homeViewModel.darkColor)),
        )),
    TextButton(
        onPressed: () {},
        child: Text(
          'Contato',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              color: (homeViewModel.dark_mode
                  ? homeViewModel.lightColor
                  : homeViewModel.darkColor)),
        )),
    TextButton(
        onPressed: () {},
        child: Text(
          'Freelance?',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              color: (homeViewModel.dark_mode
                  ? homeViewModel.lightColor
                  : homeViewModel.darkColor)),
        )),
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
    const SizedBox(width: 14.0),
  ];
}
