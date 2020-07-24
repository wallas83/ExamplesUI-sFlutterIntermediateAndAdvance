import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:pinters_menu_scroll/src/widgets/pinterest_menu.dart';

class PinteresHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PinterestMenu(),
      //PinteresGrid(),
    );
  }
}

class PinteresGrid extends StatelessWidget {
  final List<int> nums = List.generate(200, (index) => index);
  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
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
