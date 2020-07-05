import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:slide_show/src/widgets/slideshow_widget.dart';

class SlideshowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Slideshow(
        puntosArriba: false,
        colorPrimario: Colors.green,
        bulletPrimario: 20,
        bulletSecundario: 12,
        slides: <Widget>[
          SvgPicture.asset('assets/svgs/slide-1.svg'),
          SvgPicture.asset('assets/svgs/slide-2.svg'),
          SvgPicture.asset('assets/svgs/slide-3.svg'),
          SvgPicture.asset('assets/svgs/slide-4.svg'),
          SvgPicture.asset('assets/svgs/slide-5.svg'),
        ],
      ),
    );
  }
}
