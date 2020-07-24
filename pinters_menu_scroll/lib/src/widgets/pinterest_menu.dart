import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pinters_menu_scroll/src/services/menu_service.dart';

class PinterestButton {
  final Function onPressed;
  final IconData icon;
  PinterestButton({@required this.icon, @required this.onPressed});
}

class PinterestMenu extends StatelessWidget {
  final List<PinterestButton> items = [
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
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
        child: ChangeNotifierProvider(
            create: (_) => new MenuService(),
            child: _PinteresMenuBackground(child: _MenuItems(items))));
  }
}

class _PinteresMenuBackground extends StatelessWidget {
  final Widget child;
  _PinteresMenuBackground({@required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      width: 250,
      height: 60,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(100)),
          boxShadow: <BoxShadow>[
            BoxShadow(color: Colors.black38, blurRadius: 10, spreadRadius: -5)
          ]),
    );
  }
}

class _MenuItems extends StatelessWidget {
  final List<PinterestButton> menuItems;
  _MenuItems(this.menuItems);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(menuItems.length,
          (index) => _PinterestMenuButton(index, menuItems[index])),
    );
  }
}

class _PinterestMenuButton extends StatelessWidget {
  final int index;
  final PinterestButton menuItem;
  _PinterestMenuButton(this.index, this.menuItem);
  @override
  Widget build(BuildContext context) {
    final intemSeleccionado =
        Provider.of<MenuService>(context).itemSeleccionado;
    return GestureDetector(
      onTap: () {
        Provider.of<MenuService>(context, listen: false).itemSeleccionado =
            index;
        menuItem.onPressed();
      },
      behavior: HitTestBehavior.translucent,
      child: Container(
        child: Icon(
          menuItem.icon,
          size: (intemSeleccionado == index) ? 30 : 25,
          color: (intemSeleccionado == index) ? Colors.red : Colors.blueGrey,
        ),
      ),
    );
  }
}
