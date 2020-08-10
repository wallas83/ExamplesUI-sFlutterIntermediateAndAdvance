import 'package:animate_do/animate_do.dart';
import 'package:animatedDo/src/pages/navegacion_page.dart';
import 'package:animatedDo/src/pages/twitter_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: FadeIn(
              delay: Duration(milliseconds: 300), child: Text('Animated Do')),
          actions: [
            IconButton(
                icon: FaIcon(FontAwesomeIcons.twitter),
                onPressed: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (BuildContext context) => TwitterPage()));
                }),
            SlideInLeft(
              from: 20,
              child: IconButton(
                  icon: Icon(Icons.navigate_next),
                  onPressed: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (BuildContext context) => HomePage()));
                  }),
            )
          ],
        ),
        floatingActionButton: ElasticInRight(
          delay: Duration(milliseconds: 300),
          child: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (BuildContext context) => NavegacionPage()));
            },
            child: FaIcon(FontAwesomeIcons.play),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElasticIn(
                delay: Duration(milliseconds: 1100),
                child: Icon(
                  Icons.new_releases,
                  color: Colors.blue,
                  size: 40,
                ),
              ),
              FadeInDown(
                delay: Duration(milliseconds: 200),
                child: Text(
                  'Titulo',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w200),
                ),
              ),
              FadeInDown(
                delay: Duration(milliseconds: 1000),
                child: Text(
                  'Texto pequenho',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ),
              FadeInLeft(
                delay: Duration(milliseconds: 1100),
                child: Container(
                  width: 220,
                  height: 2,
                  color: Colors.blue,
                ),
              )
            ],
          ),
        ));
  }
}
