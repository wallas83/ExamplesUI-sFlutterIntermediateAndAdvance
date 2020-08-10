import 'package:animate_do/animate_do.dart';
import 'package:animatedDo/src/services/notification_provider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class NavegacionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => new NotificationProvider(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text('Notifications Page'),
        ),
        floatingActionButton: BotonFlotante(),
        bottomNavigationBar: BotomNavigation(),
      ),
    );
  }
}

class BotomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int numero = Provider.of<NotificationProvider>(context).numero;
    return BottomNavigationBar(
      currentIndex: 0,
      selectedItemColor: Colors.pink,
      items: [
        BottomNavigationBarItem(
            title: Text('Bones'), icon: FaIcon(FontAwesomeIcons.bone)),
        BottomNavigationBarItem(
            title: Text('Notifications'),
            icon: Stack(
              children: [
                FaIcon(FontAwesomeIcons.bell),
                Positioned(
                  top: 3.0,
                  right: 0.0,
                  // child: Icon(
                  //   Icons.brightness_1,
                  //   size: 8.0,
                  //   color: Colors.redAccent,
                  // ),
                  child: BounceInDown(
                    from: 10,
                    animate: (numero > 0) ? true : false,
                    child: Bounce(
                      from: 10,
                      controller: (controller) =>
                          Provider.of<NotificationProvider>(context)
                              .bounceController = controller,
                      child: Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                            color: Colors.redAccent, shape: BoxShape.circle),
                        child: Center(
                          child: Text(
                            '$numero',
                            style: TextStyle(color: Colors.white, fontSize: 7),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )),
        BottomNavigationBarItem(
            title: Text('My dog'), icon: FaIcon(FontAwesomeIcons.dog))
      ],
    );
  }
}

class BotonFlotante extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.pink,
      child: FaIcon(FontAwesomeIcons.play),
      onPressed: () {
        final notiProv =
            Provider.of<NotificationProvider>(context, listen: false);
        int numero = notiProv.numero;
        numero++;
        notiProv.numero = numero;
        if (numero >= 2) {
          final controller = notiProv.bounceController;
          controller.forward(from: 0.0);
        }
      },
    );
  }
}
