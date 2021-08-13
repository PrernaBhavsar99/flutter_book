import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ListViewWidget extends StatefulWidget {
  const ListViewWidget({Key? key}) : super(key: key);

  @override
  _ListViewWidgetState createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  ScrollController scrollController=ScrollController();
  @override
  void initState() {
   
    super.initState();
   // scrollController.
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView.builder(
              itemCount: 200, // this is length  of complete list
              itemExtent: 10, // to give size to each item
               restorationId: "233",
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,//how will keyboard dismiss there behaviour will be in this
              primary: true, //
              // controller: ,
              // dragStartBehavior: DragStartBehavior.start,
              physics:                                // this will give an animation in scroll 
                  //ClampingScrollPhysics(),
                  // PageScrollPhysics()
                  BouncingScrollPhysics()
              //  PageScrollPhysics()
              //FixedExtentScrollPhysics()
              //  NeverScrollableScrollPhysics()
              //RangeMaintainingScrollPhysics()
              //AlwaysScrollableScrollPhysics()
              // ScrollPhysics(),
              ,
              addAutomaticKeepAlives: true,
              addRepaintBoundaries: true,
              reverse: true,// to reverse the list
              semanticChildCount: 10,
              addSemanticIndexes: true,
              padding: EdgeInsets.all(5), //this will give padding from list.
              scrollDirection:
                  //Axis.values[],
                  // Axis.horizontal, //This will scroll the list upward and downward
                  Axis.vertical, //This will scroll the list upward and downward
              cacheExtent: 100,
              shrinkWrap: true, // if it is true then it will take only space it needed.. // if it is false it will be as big as parent
              dragStartBehavior: DragStartBehavior.down,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              itemBuilder: (ctx, inx) {
                return Text(inx.toString());
              } 
              )),
    );
  }
}
