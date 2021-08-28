import 'package:flutter/material.dart';

class ExpandedWidget extends StatefulWidget {
  const ExpandedWidget({Key? key}) : super(key: key);
  static const route = "/expandedBox";

  @override
  _ExpandedWidgetState createState() => _ExpandedWidgetState();
}

class _ExpandedWidgetState extends State<ExpandedWidget> {
  Map<String, bool> isEnabledProperty = {
    "baseline": true,
    "child": true,
    "baselineType": true,
  };
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
                height: size.height * 0.5,
                child: Expanded(
                  child: Text("Expanded"),
                  flex: 1,
                ))
          ],
        ),
      ),
    );
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
      children: [if (choose == "radio") child!, if (choose == "slide") child!],
    );
  }
}
