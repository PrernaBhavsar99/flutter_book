import 'package:flutter/material.dart';

class ListTileCode extends StatelessWidget {
  const ListTileCode({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listTileNode=FocusNode();
    return ListTile(
                  autofocus: false,//to focus on particular tile
                  contentPadding: 
                        EdgeInsets.all(2),
                    //  EdgeInsets.symmetric(),
                      // EdgeInsets.zero
                     // EdgeInsets.fromLTRB(left, top, right, bottom),
                     // EdgeInsets.fromWindowPadding(padding, devicePixelRatio),
                     //EdgeInsets.lerp(a, b, t),
                     //EdgeInsets.only(),
                  dense: false,

                     // to shorten then length of list tile
                  enableFeedback:
                    false,
                  enabled:true, //true:to activate the tile we use this  //false:to deactivate the tile we use this
                  focusColor:Colors.transparent,
                  
                  focusNode: listTileNode,
                //  hoverColor:,
                     
                  //isThreeLine:["isThreeLine"]!?property["isThreeLine"]:null,
                  // true: this will increase the size of length //false:
                  horizontalTitleGap:16,
                  leading: Text(""),
                     // this will be on left side of list tile
                  minLeadingWidth:40,
                    
                  minVerticalPadding: 4,
                    
                  mouseCursor:  MaterialStateMouseCursor.clickable,
                  onLongPress: (){},
                     //
                  onTap: (){},
                  selected: false,
                  selectedTileColor:Colors.transparent,
                  shape:RoundedRectangleBorder(),
                  subtitle:Text("")
                     ,
                  tileColor:Colors.transparent
                    ,
                  title: Text(""),
                  trailing:Text("")
                     ,
                  visualDensity:VisualDensity.compact
                  // ThemeData.visualdensity
                  );
  }
}