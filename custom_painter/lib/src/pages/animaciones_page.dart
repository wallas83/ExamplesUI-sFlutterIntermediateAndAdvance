import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimacionesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CuadradoAnimado(),
      ),
    );
  }
}

class CuadradoAnimado extends StatefulWidget {
  @override
  _CuadradoAnimadoState createState() => _CuadradoAnimadoState();
}

class _CuadradoAnimadoState extends State<CuadradoAnimado>
    with SingleTickerProviderStateMixin {
  Animation<double> rotacion;
  AnimationController controller;
  Animation<double> opacidad;
  Animation<double> opacidadOut;
  Animation<double> moverDerecha;
  Animation<double> agrandar;

  @override
  void initState() {
    controller = new AnimationController(
        vsync: this, duration: Duration(milliseconds: 4000));
    rotacion = Tween(begin: 0.0, end: 2.0 * math.pi)
        .animate(CurvedAnimation(parent: controller, curve: Curves.easeOut));
    controller.addListener(() {
      if (controller.status == AnimationStatus.completed) {
        //   controller.reset();
      }
    });
    opacidad = Tween(begin: 0.1, end: 1.0).animate(CurvedAnimation(
        parent: controller, curve: Interval(0.0, 0.25, curve: Curves.easeOut)));

    opacidadOut = Tween(begin: 1.0, end: 0.0).animate(CurvedAnimation(
        parent: controller, curve: Interval(0.75, 1.0, curve: Curves.ease)));

    // se puede usar curves a todo
    moverDerecha = Tween(begin: 0.0, end: 100.0)
        .animate(CurvedAnimation(parent: controller, curve: Curves.easeOut));
    //end = 2 por que se duplicara el tamanho original
    agrandar = Tween(begin: 1.0, end: 1.5)
        .animate(CurvedAnimation(parent: controller, curve: Curves.elasticOut));
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //play / reproduccion
    controller.forward();
    return AnimatedBuilder(
      animation: controller,
      child: _Rectangulo(),
      builder: (BuildContext context, Widget widgetRec) {
        return Transform.translate(
          offset: Offset(moverDerecha.value, 0.0),
          child: Transform.rotate(
              angle: rotacion.value,
              child: Opacity(
                  opacity: opacidadOut.value,
                  child: Transform.scale(
                      scale: agrandar.value, child: widgetRec))),
        );
      },
    );
  }
}

class _Rectangulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(color: Colors.blue),
    );
  }
}
