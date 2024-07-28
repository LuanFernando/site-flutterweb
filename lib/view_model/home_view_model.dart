import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeViewModel extends ChangeNotifier {
  // responsive mobile
  bool _responsive_mobile = false;
  bool get responsive_mobile => _responsive_mobile;

  // dark mode
  bool _dark_mode = false;
  bool get dark_mode => _dark_mode;

  // colors mode
  final _darkColor = Color.fromARGB(255, 32, 32, 32);
  final _lightColor = Color.fromARGB(255, 236, 232, 232);
  Color get darkColor => _darkColor;
  Color get lightColor => _lightColor;

  final String _imageAbout = "imgs/laptop.jpg";
  String get imageAbout => _imageAbout;

  final List<String> _carousel = [
    'HTML',
    'CSS',
    'PHP',
    'SQL SERVER',
    'MYSQL',
    'FLUTTER',
    'JAVA'
  ];

  List<String> get carousel => _carousel;

  final _cellRed = Color(0xffc73232);
  final _cellMustard = Color(0xffd7aa22);
  final _cellGrey = Color(0xffcfd4e0);
  final _cellBlue = Color(0xff1553be);
  final _background = Color.fromARGB(255, 253, 253, 253);

  Color get cellRed => _cellRed;
  Color get cellMustard => _cellMustard;
  Color get cellGrey => _cellGrey;
  Color get cellBlue => _cellBlue;
  Color get background => _background;

  // Voids
  Future<void> atribuicao(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.inAppWebView);
    } else {
      throw 'Could not launch $url';
    }
  }

  void mode() {
    if (_dark_mode == true) {
      _dark_mode = false;
    } else {
      _dark_mode = true;
    }
    notifyListeners();
  }

  void responsiveMobile(bool mobile) {
    _responsive_mobile = mobile;
    notifyListeners();
  }
}
