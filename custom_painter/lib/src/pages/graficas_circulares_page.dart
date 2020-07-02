import 'package:custom_painter/src/widgets/radial_progress_widget.dart';
import 'package:flutter/material.dart';

class GraficasCircularesPage extends StatefulWidget {
  @override
  _GraficasCircularesPageState createState() => _GraficasCircularesPageState();
}

class _GraficasCircularesPageState extends State<GraficasCircularesPage> {
  double porcentaje = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.refresh),
          onPressed: () {
            porcentaje += 10;
            if (porcentaje > 100) {
              porcentaje = 0;
            }
            setState(() {});
          }),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              CustomRadialProgress(
                porcentaje: porcentaje,
                primario: Colors.amber,
              ),
              CustomRadialProgress(
                  porcentaje: porcentaje, primario: Colors.redAccent),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              CustomRadialProgress(
                  porcentaje: porcentaje, primario: Colors.orange),
              CustomRadialProgress(
                  porcentaje: porcentaje, primario: Colors.cyan),
            ],
          )
        ],
      ),
    );
  }
}

class CustomRadialProgress extends StatelessWidget {
  final Color primario;
  const CustomRadialProgress(
      {@required this.porcentaje, @required this.primario});

  final double porcentaje;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 160,
      // color: Colors.red,
      child: RadialProgress(
        porcentaje: porcentaje,
        colorPrimario: primario,
        colorSecundario: Colors.grey,
      ),
    );
  }
}
