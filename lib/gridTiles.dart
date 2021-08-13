import 'package:flutter/material.dart';

class GridTileWidgets extends StatefulWidget {
  const GridTileWidgets({Key? key}) : super(key: key);

  @override
  _GridTileWidgetsState createState() => _GridTileWidgetsState();
}

class _GridTileWidgetsState extends State<GridTileWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: GridTile(
        child: Center(
          child: Text("child"),
        ), // this is used for child
        footer: Text("footer"),//this will be on down of grid tile
        header: Text("header"),//this will be on up of grid tile
      )),
    );
  }
}
