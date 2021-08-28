import 'package:flutter/material.dart';

class ListTileWidget extends StatefulWidget {
  const ListTileWidget({Key? key}) : super(key: key);
  static const route = "/listTile";

  @override
  _ListTileWidgetState createState() => _ListTileWidgetState();
}

class _ListTileWidgetState extends State<ListTileWidget> {
  bool showProperty = false;
  var visualDensity = VisualDensity.comfortable;
  var shapeBorder;
  var mouseCursor = MouseCursor.defer;
  double contentPadding = 6;
  double horizontalTitleGap = 0.0;
  double minLeadingWidth = 0.0;
  double minVerticalPadding = 0.0;
  double padding = 15.0;
  Map<String, bool> property = {
    "dense": false,
    "enabled": false,
    "selected": false,
    "isThreeLine": false,
    "enableFeedback": false,
    "autofocus": false,
  };
  Map<String, bool> isEnabledProperty = {
    "autofocus": true,
    "contentPadding": true,
    "dense": true,
    "enableFeedback": true,
    "enabled": true,
    "focusColor": true,
    "focusNode": true,
    "horizontalTitleGap": true,
    "hoverColor": true,
    "isThreeLine": true,
    "key": true,
    "leading": true,
    "minLeadingWidth": true,
    "minVerticalPadding": true,
    "mouseCursor": true,
    "onLongPress": true,
    "onTap": true,
    "selected": true,
    "selectedTileColor": true,
    "shape": true,
    "subtitle": true,
    "tileColor": true,
    "title": true,
    "trailing": true,
    "visualDensity": true,
  };
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          SizedBox(
            height: size.height * 0.5,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ListTile(
                  autofocus: isEnabledProperty["autofocus"]!
                      ? property["autofocus"]!
                      : false, //to focus on particular tile
                  contentPadding: isEnabledProperty["contentPadding"]!
                      ? EdgeInsets.all(contentPadding)
                      : null,
                  dense: isEnabledProperty["dense"]!
                      ? property["dense"]
                      : null, // to shorten then length of list tile
                  enableFeedback: isEnabledProperty["enableFeedback"]!
                      ? property[""]
                      : null,
                  // enabled: isEnabledProperty["enabled"]?property["enabled"]:null, //true:to activate the tile we use this  //false:to deactivate the tile we use this
                  focusColor: isEnabledProperty["focusColor"]!
                      ? Colors.blueAccent
                      : null,
                  //focusNode: ,
                  hoverColor:
                      isEnabledProperty["hoverColor"]! ? Colors.black26 : null,
                  //isThreeLine:isEnabledProperty["isThreeLine"]!?property["isThreeLine"]:null,
                  // true: this will increase the size of length //false:
                  horizontalTitleGap: isEnabledProperty["horizontalTitleGap"]!
                      ? horizontalTitleGap
                      : null,
                  leading: isEnabledProperty["leading"]!
                      ? Icon(Icons.leaderboard_outlined)
                      : null, // this will be on left side of list tile
                  minLeadingWidth: isEnabledProperty["minLeadingWidth"]!
                      ? minLeadingWidth
                      : null,
                  minVerticalPadding: isEnabledProperty["minVerticalPadding"]!
                      ? minVerticalPadding
                      : null,
                  mouseCursor:
                      isEnabledProperty["mouseCursor"]! ? mouseCursor : null,
                  onLongPress: isEnabledProperty["onLongPress"]!
                      ? () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content:
                                  Text("You have Press long on list tile")));
                        }
                      : null, //
                  onTap: isEnabledProperty["onTap"]!
                      ? () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("You have tapped the list Tile")));
                        }
                      : null, //
                  selected: isEnabledProperty["selected"]!
                      ? property["selected"]!
                      : false, //
                  selectedTileColor: isEnabledProperty["selectedTileColor"]!
                      ? Colors.blue
                      : null,
                  shape: isEnabledProperty["shape"]!
                      ? shapeBorder
                      : null, //RoundedRectangleBorder(),
                  subtitle:
                      isEnabledProperty["subtitle"]! ? Text("subtitle") : null,
                  tileColor: isEnabledProperty["tileColor"]!
                      ? Colors.cyanAccent
                      : null,
                  title: isEnabledProperty["title"]! ? Text("title") : null,
                  trailing:
                      isEnabledProperty["trailing"]! ? Text("trailing") : null,
                  visualDensity: isEnabledProperty["visualDensity"]!
                      ? visualDensity
                      : null //visualDensity,
                  ),
            ),
          ),
          expanded(
              title: "Auto Focus",
              subTitle: "To focus on particular tile",
              singleProperty: "autofocus",
              choose: "switch"),
          expanded(
              title: "Content Padding",
              subTitle: "To give padding content",
              singleProperty: "contentPadding",
              choose: "slide",
              child: Slider(
                  divisions: 2,
                  value: contentPadding,
                  min: 0.0,
                  max: 100.0,
                  label: contentPadding.toString(),
                  onChanged: (value) {
                    setState(() {
                      contentPadding = value;
                    });
                  })),
          expanded(
              singleProperty: "dense",
              subTitle: "To shorten then length of list tile",
              title: "Dense",
              choose: "switch"),
          expanded(
              title: "Enable Feedback",
              subTitle:
                  "To give vibration or any feedback when you tapped on listTile",
              singleProperty: "enableFeedback",
              choose: "switch"),
          expanded(
              title: "Enabled ",
              subTitle: "To activate the tile we use this",
              singleProperty: "enabled",
              choose: "switch"),
          expanded(
              title: "Focus Color",
              subTitle: "to focus color on particular tile",
              singleProperty: "focusColor",
              choose: "nothing"),
          expanded(
              title: "focus Node",
              subTitle: "to focus  and unfocus on particular tile",
              singleProperty: "focusNode",
              choose: "nothing"),
          expanded(
              title: "Horizontal Title Gap",
              subTitle: "this is gap between leading and trailing",
              singleProperty: "horizontalTitleGap",
              choose: "slide",
              child: Slider(
                  divisions: 2,
                  value: horizontalTitleGap,
                  min: 0.0,
                  max: 100.0,
                  label: horizontalTitleGap.toString(),
                  onChanged: (value) {
                    setState(() {
                      horizontalTitleGap = value;
                    });
                  })),
          expanded(
              title: "Hover Color",
              subTitle: "to give color when you hover it",
              singleProperty: "hoverColor",
              choose: "nothing"),
          expanded(
              title: "is Three Line",
              subTitle: "this will increase the size of tile",
              singleProperty: "isThreeLine",
              choose: "switch"),
          expanded(
              title: "Leading",
              subTitle: "This will be on left side of list tile",
              singleProperty: "leading",
              choose: "nothing"),
          expanded(
              title: "Min Leading Width",
              subTitle: "This will select min leading width",
              singleProperty: "minLeadingWidth",
              choose: "slide",
              child: Slider(
                  divisions: 2,
                  value: minLeadingWidth,
                  min: 0.0,
                  max: 100.0,
                  label: minLeadingWidth.toString(),
                  onChanged: (value) {
                    setState(() {
                      minLeadingWidth = value;
                    });
                  })),
          expanded(
              title: "Min Vertical Padding",
              subTitle: "This will give minimum vertical padding",
              singleProperty: "minVerticalPadding",
              choose: "slide",
              child: Slider(
                  divisions: 2,
                  value: minVerticalPadding,
                  min: 0.0,
                  max: 100.0,
                  label: minVerticalPadding.toString(),
                  onChanged: (value) {
                    setState(() {
                      minVerticalPadding = value;
                    });
                  })),
          expanded(
            title: "Mouse Cursor",
            subTitle: "To give how mouse cursor will react",
            singleProperty: "mouseCursor",
            choose: "radio",
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Defer"),
                Radio(
                    value: MouseCursor.defer,
                    groupValue: mouseCursor,
                    onChanged: (density) {
                      setState(() {
                        mouseCursor = MouseCursor.defer;
                      });
                    }),
                Text("Uncontrolled"),
                Radio(
                    value: MouseCursor.uncontrolled,
                    groupValue: visualDensity,
                    onChanged: (density) {
                      setState(() {
                        mouseCursor = MouseCursor.uncontrolled;
                      });
                    }),
              ],
            ),
          ),
          expanded(
              title: "on Long Press",
              subTitle:
                  " this is callback function called when tile is longPress",
              singleProperty: "onLongPress",
              choose: "nothing"),
          expanded(
              title: "on Tap",
              subTitle: " this is callback function called when tile is tap",
              singleProperty: "onTap",
              choose: "nothing"),
          expanded(
              title: "Selected",
              subTitle: "if we want to select or unselect to listTile",
              singleProperty: "selected",
              choose: "switch"),
          expanded(
              title: "Selected Tile Color",
              subTitle: "if tile is selected then color will according to this",
              singleProperty: "selectedTileColor",
              choose: "nothing"),
          expanded(
            title: "Shape",
            subTitle: "To give shape to listTile",
            singleProperty: "shape",
            choose: "radio",
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        Text("ContinuousRectangleBorder"),
                        Radio(
                            value: ContinuousRectangleBorder(),
                            groupValue: shapeBorder,
                            onChanged: (density) {
                              setState(() {
                                shapeBorder = ContinuousRectangleBorder();
                              });
                            }),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Stadium Border"),
                        Radio(
                            value: StadiumBorder(),
                            groupValue: shapeBorder,
                            onChanged: (density) {
                              setState(() {
                                shapeBorder = StadiumBorder();
                              });
                            }),
                      ],
                    ),
                    Row(children: [
                      Text("CircleBorder"),
                      Radio(
                          value: CircleBorder(),
                          groupValue: shapeBorder,
                          onChanged: (density) {
                            setState(() {
                              shapeBorder = CircleBorder();
                            });
                          }),
                    ]),
                    Row(children: [
                      Text("RoundedRectangleBorder"),
                      Radio(
                          value: RoundedRectangleBorder(),
                          groupValue: shapeBorder,
                          onChanged: (density) {
                            setState(() {
                              shapeBorder = RoundedRectangleBorder();
                            });
                          })
                    ]),
                    Row(children: [
                      Text("BeveledRectangleBorder"),
                      Radio(
                          value: BeveledRectangleBorder(),
                          groupValue: shapeBorder,
                          onChanged: (density) {
                            setState(() {
                              shapeBorder = BeveledRectangleBorder();
                            });
                          })
                    ]),
                    Row(children: [
                      Text("None Border"),
                      Radio(
                          value: InputBorder.none,
                          groupValue: shapeBorder,
                          onChanged: (density) {
                            setState(() {
                              shapeBorder = InputBorder.none;
                            });
                          })
                    ]),
                    Row(children: [
                      Text("All Border"),
                      Radio(
                          value: Border.all(),
                          groupValue: shapeBorder,
                          onChanged: (density) {
                            setState(() {
                              shapeBorder = Border.all();
                            });
                          })
                    ]),
                    Row(children: [
                      Text("BorderDirectional"),
                      Radio(
                          value: BorderDirectional(),
                          groupValue: shapeBorder,
                          onChanged: (density) {
                            setState(() {
                              shapeBorder = BorderDirectional();
                            });
                          }),
                    ])
                  ],
                ),
              ),
            ),
          ),
          expanded(
              title: "SubTitle",
              subTitle: "To give subtitle below title",
              singleProperty: "subtitle",
              choose: "nothing"),
          expanded(
              title: "Tile Color",
              subTitle: "This will give color to tile",
              singleProperty: "tileColor",
              choose: "nothing"),
          expanded(
              title: "Title",
              subTitle: "To give title",
              singleProperty: "title",
              choose: "nothing"),
          expanded(
              title: "Trailing",
              subTitle: "this will be on right side of list tile",
              singleProperty: "trailing",
              choose: "nothing"),
          expanded(
            title: "Visual Density",
            subTitle: "to give how our list tile will look like",
            singleProperty: "visualDensity",
            choose: "radio",
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("compact"),
                Radio(
                    value: VisualDensity.compact,
                    groupValue: visualDensity,
                    onChanged: (density) {
                      setState(() {
                        visualDensity = VisualDensity.compact;
                      });
                    }),
                Text("comfortable"),
                Radio(
                    value: VisualDensity.comfortable,
                    groupValue: visualDensity,
                    onChanged: (density) {
                      setState(() {
                        visualDensity = VisualDensity.comfortable;
                      });
                    }),
                Text("Standard"),
                Radio(
                    value: VisualDensity.standard,
                    groupValue: visualDensity,
                    onChanged: (density) {
                      setState(() {
                        visualDensity = VisualDensity.standard;
                      });
                    }),
              ],
            ),
          ),
        ],
      )),
    );
  }

  // Widget radioButton() {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //     children: [
  //       Text("compact"),
  //       Radio(
  //           value: VisualDensity.compact,
  //           groupValue: visualDensity,
  //           onChanged: (density) {
  //             setState(() {
  //               visualDensity = VisualDensity.compact;
  //             });
  //           }),
  //       Text("comfortable"),
  //       Radio(
  //           value: VisualDensity.comfortable,
  //           groupValue: visualDensity,
  //           onChanged: (density) {
  //             setState(() {
  //               visualDensity = VisualDensity.comfortable;
  //             });
  //           }),
  //       Text("Standard"),
  //       Radio(
  //           value: VisualDensity.standard,
  //           groupValue: visualDensity,
  //           onChanged: (density) {
  //             setState(() {
  //               visualDensity = VisualDensity.standard;
  //             });
  //           }),
  //     ],
  //       ] ),));
//  }

  Widget slider(double? slideVar) {
    return Slider(
        divisions: 1,
        value: padding.toDouble(),
        min: 0.0,
        max: 100.0,
        label: slideVar.toString(),
        onChanged: (value) {
          setState(() {
            slideVar = value;
          });
        });
  }

  Widget expanded({
    required String title,
    required String subTitle,
    required String singleProperty,
    required String choose,
    Widget? child,
  }) {
    return ExpansionTile(
      leading: Checkbox(
          value: isEnabledProperty[singleProperty],
          onChanged: (value) {
            setState(() {
              isEnabledProperty[singleProperty] = value!;
            });
          }),
      title: Text(title),
      subtitle: Text(subTitle),
      children: [
        if (choose == "switch")
          SwitchListTile(
              title: Text(title),
              value: property[singleProperty]!,
              onChanged: (bool value) {
                setState(() {
                  property[singleProperty] = value;
                });
              }),
        if (choose == "radio") child!,
        if (choose == "slide") child!
      ],
    );
  }
}
