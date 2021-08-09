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
        ),
        footer: Text("footer"),
        header: Text("header"),
      )),
    );
  }
}
