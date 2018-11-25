
import 'package:flutter_swiper/flutter_swiper.dart';

import 'package:flutter/material.dart';

final List<Image> _carouselImages = [
  Image.network('https://picsum.photos/238/872', fit: BoxFit.cover,),
  Image.network('https://picsum.photos/337/246', fit: BoxFit.cover,),
  Image.network('https://picsum.photos/642/643', fit: BoxFit.cover,),
  Image.network('https://picsum.photos/624/533', fit: BoxFit.cover,),
  Image.network('https://picsum.photos/743/428', fit: BoxFit.cover,),
];

class CarouselWidget extends StatelessWidget {
  final SwiperController _swiperControl = SwiperController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 200.0,
      child: Swiper(
        pagination: SwiperPagination(),
        loop: true,
        autoplay: true,
        duration: 2000,
        controller: _swiperControl,
        itemBuilder: (BuildContext context, int index) {
          return _carouselImages[index];
        },
        itemCount: _carouselImages.length,
      ),
    );
  }

}