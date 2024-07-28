import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:site_dev/service/home_service.dart';
import 'package:site_dev/view_model/home_view_model.dart';

import 'view/page_home.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => HomeViewModel(HomeService())),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu Portifólio :: Dev',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme: const TextTheme(
            // bodyLarge: TextStyle(color: Color.fromARGB(47, 54, 64, 1)),
            // bodyMedium: TextStyle(color: Color.fromARGB(47, 54, 64, 1)),
            // bodySmall: TextStyle(color: Color.fromARGB(47, 54, 64, 1)),
            ),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const PageHome(),
    );
  }
}
