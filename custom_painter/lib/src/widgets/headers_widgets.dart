import 'dart:ui';

import 'package:flutter/material.dart';

class HeaderCuadrado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Color(0xff615AAb),
    );
  }
}

class HeaderBorderRedondeados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
          color: Color(0xff615AAb),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(60),
              bottomRight: Radius.circular(60))),
    );
  }
}

class HeaderCuadradoDiagonalTrasform extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.09,
      child: Container(
        height: 300,
        width: double.infinity,
        color: Color(0xff615AAb),
      ),
    );
  }
}

class HeaderDiagonalPainter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: Color(0xff615AAb),
      child: CustomPaint(
        painter: _HeaderDiagonalPainter(),
      ),
    );
  }
}

class _HeaderDiagonalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final paint = Paint();
    paint.color = Color(0xff615AAb);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20;

    final path = Path();

    //dibujar con el path
    path.moveTo(0, size.height * 0.4);
    path.lineTo(size.width, size.height * 0.35);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}

//custom painter en forma de triangulo
class HeaderTriangularPainter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: Color(0xff615AAb),
      child: CustomPaint(
        painter: _HeaderTriangularPainter(),
      ),
    );
  }
}

class _HeaderTriangularPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final paint = Paint();
    paint.color = Color(0xff615AAb);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20;

    final path = Path();

    //dibujar con el path
    path.moveTo(0, size.height);
    path.lineTo(0, 0);
    path.lineTo(size.width, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}

//header pico

//custom painter en forma de triangulo
class HeaderPicoPainter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: Color(0xff615AAb),
      child: CustomPaint(
        painter: _HeaderpicoPainters(),
      ),
    );
  }
}

class _HeaderpicoPainters extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final paint = Paint();
    paint.color = Color(0xff615AAb);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20;

    final path = Path();

    //dibujar con el path
    path.lineTo(0, size.height * 0.2);
    path.lineTo(size.width * 0.5, size.height * 0.3);
    path.lineTo(size.width, size.height * 0.2);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}

//header curvo

class HeaderCurvoPainter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: Color(0xff615AAb),
      child: CustomPaint(
        painter: _HeaderCurvoPainters(),
      ),
    );
  }
}

class _HeaderCurvoPainters extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final paint = Paint();
    paint.color = Color(0xff615AAb);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20;

    final path = Path();

    //dibujar con el path
    path.lineTo(0, size.height * 0.2);
    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0.35, size.width, size.height * 0.2);

    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}

//header wave

class HeaderWavePainter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: Color(0xff615AAb),
      child: CustomPaint(
        painter: _HeaderWavePainters(),
      ),
    );
  }
}

class _HeaderWavePainters extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final paint = Paint();
    paint.color = Color(0xff615AAb);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20;

    final path = Path();

    //dibujar con el path
    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.30,
        size.width * 0.5, size.height * 0.25);

    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.20, size.width, size.height * 0.25);

    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}

//header wave with gradient

class HeaderWaveGradientPainter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: Color(0xff615AAb),
      child: CustomPaint(
        painter: _HeaderWaveGradientPainters(),
      ),
    );
  }
}

class _HeaderWaveGradientPainters extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final Rect rect =
        new Rect.fromCircle(center: Offset(0.0, 55.0), radius: 180);
    final Gradient gradiente = new LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: <Color>[
          Color(0xff6D05E8),
          Color(0xffc012FF),
          Color(0xff6D05FA),
        ],
        stops: [
          0.2,
          0.5,
          1.8
        ]);
    final paint = Paint()..shader = gradiente.createShader(rect);

    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20;

    final path = Path();

    //dibujar con el path
    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.30,
        size.width * 0.5, size.height * 0.25);

    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.20, size.width, size.height * 0.25);

    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
