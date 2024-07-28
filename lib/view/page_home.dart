import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:site_dev/view/desktop/page_home_desktop.dart';
import 'package:site_dev/view/mobile/action_mobile.dart';
import 'package:site_dev/view/mobile/page_home_mobile.dart';
import 'package:site_dev/view/responsive.dart';
import 'package:site_dev/view_model/home_view_model.dart';

import 'desktop/action_desktop.dart';
import 'mobile/drawer_menu.dart';

class PageHome extends StatefulWidget {
  const PageHome({super.key});

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    // Providers
    final homeViewModel = Provider.of<HomeViewModel>(context);

    return Scaffold(
      appBar: homeViewModel.responsive_mobile == true
          ? PreferredSize(
              preferredSize: Size(MediaQuery.of(context).size.width, 75.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 70.0,
                      color: (homeViewModel.dark_mode
                          ? homeViewModel.darkColor
                          : homeViewModel.lightColor),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: actionMobile(homeViewModel, context),
                      ),
                    ),
                  )
                ],
              ),
            )
          : AppBar(
              backgroundColor: (homeViewModel.dark_mode
                  ? homeViewModel.darkColor
                  : homeViewModel.lightColor),
              foregroundColor: (homeViewModel.dark_mode
                  ? homeViewModel.lightColor
                  : homeViewModel.darkColor),
              title: Icon(
                Icons.code,
                color: (homeViewModel.dark_mode
                    ? homeViewModel.lightColor
                    : homeViewModel.darkColor),
              ),
              actions: actionDesktop(homeViewModel),
            ),
      // drawer: homeViewModel.responsive_mobile ? DrawerMenu() : null, abre a esquerda
      endDrawer: homeViewModel.responsive_mobile ? DrawerMenu() : null,
      body: Responsive(
          mobileBody: pageHomeMobile(), desktopBody: pageHomeDesktop()),
    );
  }
}
