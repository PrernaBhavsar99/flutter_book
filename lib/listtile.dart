import 'package:flutter/material.dart';

class ListTileWidget extends StatefulWidget {
  const ListTileWidget({Key? key}) : super(key: key);

  @override
  _ListTileWidgetState createState() => _ListTileWidgetState();
}

class _ListTileWidgetState extends State<ListTileWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          ListTile(
            autofocus: true,
            contentPadding: EdgeInsets.all(12),
            //dense: true, // o shorten the list tile
            enableFeedback: true,
            enabled: true,
            focusColor: Colors.amber, //focusNode: ,
            // hoverColor: Colors.blue,
            isThreeLine: true, horizontalTitleGap: 12,
            leading: Icon(Icons.leaderboard_outlined), minLeadingWidth: 14,
            minVerticalPadding: 12,
            //mouseCursor: MouseCursor.defer,
            onLongPress: () {},
            onTap: () {},
            // selected: true,
            // selectedTileColor: Colors.redAccent,
            shape: RoundedRectangleBorder(),
            subtitle: Text("subTitle"),
            tileColor: Colors.redAccent,
            title: Text("title"),
            trailing: Text("trailing"),
            visualDensity: VisualDensity.comfortable,
          ),
          ListTile(
            autofocus: true,
            contentPadding: EdgeInsets.all(12),
            dense: true,
            enableFeedback: true,
            enabled: true,
            focusColor: Colors.amber, //focusNode: ,
            hoverColor: Colors.blue,
            isThreeLine: true, horizontalTitleGap: 12,
            leading: Icon(Icons.leaderboard_outlined), minLeadingWidth: 14,
            minVerticalPadding: 12,
            mouseCursor: MouseCursor.defer,
            onLongPress: () {},
            onTap: () {},
            selected: true,
            selectedTileColor: Colors.redAccent,
            shape: RoundedRectangleBorder(),
            subtitle: Text("subTitle"),
            tileColor: Colors.cyanAccent,
            title: Text("title"),
            trailing: Text("trailing"),
            visualDensity: VisualDensity.comfortable,
          )
        ],
      )),
    );
  }
}
