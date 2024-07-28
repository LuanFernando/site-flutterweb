import 'package:site_dev/model/carousel_item.dart';

class HomeService {
  final List<CarouselItem> _carousel = [
    CarouselItem('HTML'),
    CarouselItem('CSS'),
    CarouselItem('PHP'),
    CarouselItem('SQL SERVER'),
    CarouselItem('MYSQL'),
    CarouselItem('FLUTTER'),
    CarouselItem('JAVA')
  ];

  List<CarouselItem> getCarousel() {
    return _carousel;
  }
}
