import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:site_dev/view_model/home_view_model.dart';
import '../../text.dart';

buildSectionAbout() {
  return Consumer<HomeViewModel>(builder: (context, homeViewModel, child) {
    return Container(
      height: (homeViewModel.responsive_mobile == false ? 400.0 : 500.0),
      // color: Colors.red,
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: (homeViewModel.responsive_mobile == false
            ? Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 350.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 10,
                            child: Image.asset(homeViewModel.imageAbout),
                          ),
                          Expanded(
                            child: TextButton(
                                onPressed: () async {
                                  await homeViewModel
                                      .atribuicao(linkPhotoLaptop);
                                },
                                child: const Text(
                                    "Foto de Goran Ivos na Unsplash")),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 400.0,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(textAbout),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 450.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 10,
                            child: Image.asset(
                              homeViewModel.imageAbout,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                                onPressed: () async {
                                  await homeViewModel
                                      .atribuicao(linkPhotoLaptop);
                                },
                                child: const Text(
                                    "Foto de Goran Ivos na Unsplash")),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 400.0,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(textAbout),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )),
      ),
    );
  });
}
