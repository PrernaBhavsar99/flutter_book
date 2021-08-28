import 'package:flutter/material.dart';

class ConstrainedBoxWidget extends StatefulWidget {
  const ConstrainedBoxWidget({Key? key}) : super(key: key);
  static const route = "/constraintBox";

  @override
  _ConstrainedBoxWidgetState createState() => _ConstrainedBoxWidgetState();
}

class _ConstrainedBoxWidgetState extends State<ConstrainedBoxWidget> {
  Map<String, bool> isEnabledProperty = {
    "constraints": true,
    "child": true,
  };
  var constraints = BoxConstraints.expand();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
            child: ListView(children: [
      Container(
          height: size.height * 0.5,
          child: ConstrainedBox(
            constraints: constraints,
            child: Text("data"),
          )),
      ExpansionTile(
          title: Text("constraints"),
          subtitle: Text("To give constraints to widget"),
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        Text("Expanded"),
                        Radio(
                            value: BoxConstraints.expand(),
                            groupValue: constraints,
                            onChanged: (boxConstraint) {
                              setState(() {
                                constraints = BoxConstraints.expand();
                              });
                            }),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Loose"),
                        Radio(
                            value: BoxConstraints.loose(size),
                            groupValue: constraints,
                            onChanged: (boxConstraint) {
                              setState(() {
                                constraints = BoxConstraints.loose(size);
                              });
                            }),
                      ],
                    ),
                    Row(children: [
                      Text("Tight"),
                      Radio(
                          value: BoxConstraints.tight(size),
                          groupValue: constraints,
                          onChanged: (boxConstraint) {
                            setState(() {
                              constraints = BoxConstraints.tight(size);
                            });
                          }),
                    ]),
                    Row(children: [
                      Text("Tight with Given Length"),
                      Radio(
                          value:
                              BoxConstraints.tightFor(width: 100, height: 100),
                          groupValue: constraints,
                          onChanged: (boxConstraint) {
                            setState(() {
                              constraints = BoxConstraints.tightFor(
                                  width: 100, height: 100);
                            });
                          })
                    ]),
                    Row(children: [
                      Text("Tight for finite"),
                      Radio(
                          value: BoxConstraints.tightForFinite(),
                          groupValue: constraints,
                          onChanged: (boxConstraint) {
                            setState(() {
                              constraints = BoxConstraints.tightForFinite();
                            });
                          })
                    ]),
                  ],
                ),
              ),
            )
          ])
    ])));
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
      children: [child!],
    );
  }
}
