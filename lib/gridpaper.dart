import 'package:flutter/material.dart';

class GridPaperWidget extends StatefulWidget {
  const GridPaperWidget({Key? key}) : super(key: key);

  @override
  _GridPaperWidgetState createState() => _GridPaperWidgetState();
}

class _GridPaperWidgetState extends State<GridPaperWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridPaper(
          color: Colors.black,
          divisions: 10,
          child: Container(),
          // subdivisions: 150,
          interval: 15,
        ),
      ),
    );
  }
}
