import 'package:flutter/material.dart';

class GridTileBarWidgets extends StatefulWidget {
  const GridTileBarWidgets({Key? key}) : super(key: key);
  static const route = "/gridTileBar";
  @override
  _GridTileBarWidgetsState createState() => _GridTileBarWidgetsState();
}

class _GridTileBarWidgetsState extends State<GridTileBarWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: GridTileBar(
              backgroundColor: Colors.blue, //gives color to gridTile 
              leading:  Text("leading"), //this will be on left pf gridTile
              subtitle: Text("subtitle"), // this will be subtitle of gridTile below title bar
              title: Text("title"),// this will be title of gridTile
              trailing: Icon(Icons.arrow_forward_ios_rounded)//this will be on right of gridTile
              )),
    );
  }
}
