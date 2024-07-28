import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:site_dev/view_model/home_view_model.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeViewModel>(builder: (context, homeViewModel, child) {
      return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: (homeViewModel.dark_mode
                    ? homeViewModel.darkColor
                    : homeViewModel.lightColor),
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: (homeViewModel.dark_mode
                      ? homeViewModel.lightColor
                      : homeViewModel.darkColor),
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text(
                'Sobre',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: homeViewModel.darkColor),
              ),
              onTap: () {
                Navigator.pop(context); // Fecha o drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                'Habilidades',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: homeViewModel.darkColor),
              ),
              onTap: () {
                Navigator.pop(context); // Fecha o drawer
              },
            ),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                'Projetos',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: homeViewModel.darkColor),
              ),
              onTap: () {
                Navigator.pop(context); // Fecha o drawer
              },
            ),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                'Contato',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: homeViewModel.darkColor),
              ),
              onTap: () {
                Navigator.pop(context); // Fecha o drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                'Freelance?',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: homeViewModel.darkColor),
              ),
              onTap: () {
                Navigator.pop(context); // Fecha o drawer
              },
            ),
            // Adicione mais itens de menu conforme necessário
          ],
        ),
      );
    });
  }
}
