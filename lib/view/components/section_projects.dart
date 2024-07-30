import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:site_dev/text.dart';
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
          Padding(
            padding: EdgeInsets.all(14.0),
            child: Text(
              "Projetos",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: homeViewModel.intiSizeFonte,
              ),
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
                  gridArea('r').containing(
                    Container(
                      color: (homeViewModel.dark_mode
                          ? homeViewModel.darkColor
                          : homeViewModel.lightColor),
                      child: Center(
                        child: TextButton(
                          onPressed: () {
                            homeViewModel.routes(context, 'elevator-app');

                            // context.go('/');
                          },
                          child: Text(
                            'Elevator app',
                            style: TextStyle(
                              fontSize: homeViewModel.intiSizeFonte,
                              color: (homeViewModel.dark_mode
                                  ? homeViewModel.lightColor
                                  : homeViewModel.darkColor),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  gridArea('y').containing(
                    Container(
                      color: (homeViewModel.dark_mode
                          ? homeViewModel.darkColor
                          : homeViewModel.lightColor),
                      child: Center(
                        child: TextButton(
                          onPressed: () async {
                            await homeViewModel
                                .atribuicao(linkMqGestaoControleFinanceiro);
                          },
                          child: Text(
                            'MQ Gestão App',
                            style: TextStyle(
                              fontSize: homeViewModel.intiSizeFonte,
                              color: (homeViewModel.dark_mode
                                  ? homeViewModel.lightColor
                                  : homeViewModel.darkColor),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Column 2
                  gridArea('R').containing(
                    Container(
                      color: (homeViewModel.dark_mode
                          ? homeViewModel.darkColor
                          : homeViewModel.lightColor),
                      child: Center(
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'App 1',
                            style: TextStyle(
                              fontSize: homeViewModel.intiSizeFonte,
                              color: (homeViewModel.dark_mode
                                  ? homeViewModel.lightColor
                                  : homeViewModel.darkColor),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Column 3
                  gridArea('B').containing(
                    Container(
                      color: (homeViewModel.dark_mode
                          ? homeViewModel.darkColor
                          : homeViewModel.lightColor),
                      child: Center(
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'App 2',
                            style: TextStyle(
                              fontSize: homeViewModel.intiSizeFonte,
                              color: (homeViewModel.dark_mode
                                  ? homeViewModel.lightColor
                                  : homeViewModel.darkColor),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  gridArea('Y').containing(
                    Container(
                      color: (homeViewModel.dark_mode
                          ? homeViewModel.darkColor
                          : homeViewModel.lightColor),
                      child: Center(
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'App 3',
                            style: TextStyle(
                              fontSize: homeViewModel.intiSizeFonte,
                              color: (homeViewModel.dark_mode
                                  ? homeViewModel.lightColor
                                  : homeViewModel.darkColor),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  gridArea('g').containing(
                    Container(
                      color: (homeViewModel.dark_mode
                          ? homeViewModel.darkColor
                          : homeViewModel.lightColor),
                      child: Center(
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'App 4',
                            style: TextStyle(
                              fontSize: homeViewModel.intiSizeFonte,
                              color: (homeViewModel.dark_mode
                                  ? homeViewModel.lightColor
                                  : homeViewModel.darkColor),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Column 4
                  gridArea('b').containing(
                    Container(
                      color: (homeViewModel.dark_mode
                          ? homeViewModel.darkColor
                          : homeViewModel.lightColor),
                      child: Center(
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'App 5',
                            style: TextStyle(
                              fontSize: homeViewModel.intiSizeFonte,
                              color: (homeViewModel.dark_mode
                                  ? homeViewModel.lightColor
                                  : homeViewModel.darkColor),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Column 5
                  gridArea('yy').containing(
                    Container(
                      color: (homeViewModel.dark_mode
                          ? homeViewModel.darkColor
                          : homeViewModel.lightColor),
                      child: Center(
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'App 6',
                            style: TextStyle(
                              fontSize: homeViewModel.intiSizeFonte,
                              color: (homeViewModel.dark_mode
                                  ? homeViewModel.lightColor
                                  : homeViewModel.darkColor),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  });
}
