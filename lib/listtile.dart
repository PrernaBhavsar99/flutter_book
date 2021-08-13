import 'package:flutter/material.dart';

class ListTileWidget extends StatefulWidget {
  const ListTileWidget({Key? key}) : super(key: key);

  @override
  _ListTileWidgetState createState() => _ListTileWidgetState();
}

class _ListTileWidgetState extends State<ListTileWidget> {
  bool showProperty = false;
  var visualDensity = VisualDensity.comfortable;
  Map<String, bool?> property = {
    "dense": false,
    "enabled": false,
    "selected": false,
    "isThreeLine": false,
    "enableFeedback": false,
    "autofocus": false,
  };
  Map<String, bool> enabledProperty = {
    "autofocus": false,
    "contentPadding": false,
    "dense": false,
    "enableFeedback": false,
    "enabled": false,
    "focusColor": false,
    "focusNode": false,
    "horizontalTitleGap": false,
    "hoverColor": false,
    "isThreeLine": false,
    "key": false,
    "leading": false,
    "minLeadingWidth": false,
    "minVerticalPadding": false,
    "mouseCursor": false,
    "onLongPress": false,
    "onTap": false,
    "selected": false,
    "selectedTileColor": false,
    "shape": false,
    "subtitle": false,
    "tileColor": false,
    "title": false,
    "trailing": false,
    "visualDensity": false,
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ListTile(
              autofocus: property["autofocus"]!, //to focus on particular tile
              contentPadding: EdgeInsets.all(12), // to give padding content
              dense: property["dense"]!, // to shorten then length of list tile
              enableFeedback: property["enableFeedback"],
              enabled: property[
                  "enabled"]!, //true:to activate the tile we use this  //false:to deactivate the tile we use this
              focusColor: Colors.amber,
              //focusNode: ,
              hoverColor: Colors.blue,
              // isThreeLine:
              //     true, // true: this will increase the size of length //false:
              horizontalTitleGap:
                  12, // this is gap between leading and trailing
              leading: enabledProperty["trailing"]!
                  ? Icon(Icons.leaderboard_outlined)
                  : null, // this will be on left side of list tile
              minLeadingWidth: 14,
              minVerticalPadding: 12,
              mouseCursor: MouseCursor.defer,
              onLongPress:
                  () {}, // this is callback function called when tile is longPress
              onTap: () {
                print(property);
              }, // this is callback function called when tile is tap
              selected: property[
                  "selected"]!, // if we want to select or unselect to listTile
              selectedTileColor: Colors
                  .redAccent, // if tile is selected then color will according to this
              shape: RoundedRectangleBorder(),
              subtitle: property["dense"]! ? Text("subTitle") : null,
              tileColor: property["dense"]!
                  ? Colors.cyanAccent
                  : null, // this will give color to tile
              title: Text("title"),
              trailing:
                  Text("trailing"), // this will be on right side of list tile
              visualDensity: visualDensity,
            ),
          ),
          // SwitchListTile(
          //     title: Text("Dense"),
          //     subtitle: Text("To shorten then length of list tile"),
          //     value: property["dense"]!,
          //     onChanged: (bool? value) {
          //       setState(() {
          //         property["dense"] = value!;
          //       });
          //     }),
          SwitchListTile(
              title: Text("Auto Focus"),
              subtitle: Text("To shorten then length of list tile"),
              value: property["autofocus"]!,
              onChanged: (bool? value) {
                setState(() {
                  property["autofocus"] = value!;
                });
              }),
          SwitchListTile(
              title: Text("Enabled"),
              subtitle: Text("To shorten then length of list tile"),
              value: property["enabled"]!,
              onChanged: (bool? value) {
                setState(() {
                  property["enabled"] = value!;
                });
              }),
          SwitchListTile(
              title: Text("Selected"),
              subtitle: Text("To shorten then length of list tile"),
              value: property["selected"]!,
              onChanged: (bool? value) {
                setState(() {
                  property["selected"] = value!;
                });
              }),
          SwitchListTile(
              title: Text("Is Three line"),
              subtitle: Text("To shorten then length of list tile"),
              value: property["isThreeLine"]!,
              onChanged: (bool? value) {
                setState(() {
                  property["isThreeLine"] = value!;
                });
              }),
          radioButton(),
          expanded(
            singleproperty: "dense",
            subTitle: "To shorten then length of list tile",
            title: "Dense",
            isSwitch: false,
          )
        ],
      )),
    );
  }

  Widget radioButton() {
    return Row(
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
    );
  }

  Widget expanded(
      {required String title,
      required String subTitle,
      required String singleproperty,
      //required Widget child,
      required bool isSwitch}) {
    return ExpansionTile(
      leading: Checkbox(
          value: enabledProperty[singleproperty],
          onChanged: (value) {
            setState(() {
              property[singleproperty] = value;
            });
          }),
      title: Text(title),
      children: [
        isSwitch
            ? SwitchListTile(
                title: Text(title),
                subtitle: Text(subTitle),
                value: property[singleproperty]!,
                onChanged: (bool? value) {
                  setState(() {
                    property[singleproperty] = value!;
                  });
                })
            : Row(
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
      ],
    );
  }
}
