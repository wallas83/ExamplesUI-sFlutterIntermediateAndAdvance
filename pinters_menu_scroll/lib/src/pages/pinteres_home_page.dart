import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:pinters_menu_scroll/src/services/menu_mostrar_service.dart';
import 'package:pinters_menu_scroll/src/widgets/pinterest_menu.dart';
import 'package:provider/provider.dart';

class PinteresHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => new MenuMostrar(),
      child: Scaffold(
          body: Stack(
        children: <Widget>[PinteresGrid(), _PinterestMenuLocation()],
      )
          //PinterestMenu(),
          //PinteresGrid(),
          ),
    );
  }
}

class _PinterestMenuLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final anchoPantalla = MediaQuery.of(context).size.width;
    final mostrar = Provider.of<MenuMostrar>(context).mostrarGet;
    return Positioned(
        bottom: 20,
        child: Container(
          //color: Colors.red,
          // height: 500,
          width: anchoPantalla,
          child: Align(
            child: PinterestMenu(
              mostrar: mostrar,
              items: [
                PinterestButton(
                    icon: Icons.pie_chart,
                    onPressed: () {
                      print('pie char');
                    }),
                PinterestButton(
                    icon: Icons.search,
                    onPressed: () {
                      print('search');
                    }),
                PinterestButton(
                    icon: Icons.notifications,
                    onPressed: () {
                      print('notification');
                    }),
                PinterestButton(
                    icon: Icons.supervised_user_circle,
                    onPressed: () {
                      print('supervisor');
                    }),
              ],
              // backgroundColor: Colors.yellow,
            ),
          ),
        ));
  }
}

class PinteresGrid extends StatefulWidget {
  @override
  _PinteresGridState createState() => _PinteresGridState();
}

class _PinteresGridState extends State<PinteresGrid> {
  final List<int> nums = List.generate(200, (index) => index);
  ScrollController controller = new ScrollController();
  double scrollAnterior = 0;
  @override
  void initState() {
    controller.addListener(() {
      print('antes de el if ${controller.offset}');
      if (controller.offset > scrollAnterior && controller.offset > 150) {
        //print('Ocultar menu');
        Provider.of<MenuMostrar>(context, listen: false).mostrarSet = false;
      } else {
        Provider.of<MenuMostrar>(context, listen: false).mostrarSet = true;
        //print('Mostrar menu');
      }

      scrollAnterior = controller.offset;
      // print('fuera de el if  $scrollAnterior');
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      controller: controller,
      crossAxisCount: 4,
      itemCount: nums.length,
      itemBuilder: (BuildContext context, int index) {
        return _PinteresItem(index);
      },
      staggeredTileBuilder: (int index) =>
          StaggeredTile.count(2, index.isEven ? 2 : 3),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
    );
  }
}

class _PinteresItem extends StatelessWidget {
  final int index;
  _PinteresItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.blue,
      ),
      child: Center(
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: Text('$index'),
        ),
      ),
    );
  }
}
