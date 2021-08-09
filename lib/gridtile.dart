import 'package:flutter/material.dart';

class GridTileBarWidgets extends StatefulWidget {
  const GridTileBarWidgets({Key? key}) : super(key: key);

  @override
  _GridTileBarWidgetsState createState() => _GridTileBarWidgetsState();
}

class _GridTileBarWidgetsState extends State<GridTileBarWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: GridTileBar(
              backgroundColor: Colors.blue, //gives 
              leading: Icon(Icons.access_time),
              subtitle: Text("subtitle"),
              title: Text("title"),
              trailing: Icon(Icons.arrow_forward_ios_rounded))),
    );
  }
}
