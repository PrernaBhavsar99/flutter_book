import 'package:flutter/material.dart';

class AlignWidget extends StatefulWidget {
  const AlignWidget({Key? key}) : super(key: key);

  @override
  _AlignWidgetState createState() => _AlignWidgetState();
}

class _AlignWidgetState extends State<AlignWidget> {
  double heightFactor = 0.0;
  double widthFactor = 0.0;
  var alignment = Alignment.bottomCenter;
  Map<String, bool> isEnabledProperty = {
    "alignment": true,
    "child": true,
    "heightFactor": true,
    "widthFactor": true
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            child: Align(
              alignment: alignment
              //isEnabledProperty["alignment"]?alignment:null,
              ,
              child: isEnabledProperty["child"]! ? FlutterLogo() : null,
              heightFactor:
                  isEnabledProperty["heightFactor"]! ? heightFactor : null,
              widthFactor:
                  isEnabledProperty["widthFactor"]! ? widthFactor : null,
            ),
          ),
          expanded(
            title: "Alignment",
            subTitle: "To give alignment to widget",
            singleproperty: "alignment",
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
                        Text("Bottom Center"),
                        Radio(
                            value: Alignment.bottomCenter,
                            groupValue: alignment,
                            onChanged: (align) {
                              setState(() {
                                alignment = Alignment.bottomCenter;
                              });
                            }),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Bottom Left"),
                        Radio(
                            value: Alignment.bottomLeft,
                            groupValue: alignment,
                            onChanged: (align) {
                              setState(() {
                                alignment = Alignment.bottomLeft;
                              });
                            }),
                      ],
                    ),
                    Row(children: [
                      Text("Bottom Right"),
                      Radio(
                          value: Alignment.bottomRight,
                          groupValue: alignment,
                          onChanged: (align) {
                            setState(() {
                              alignment = Alignment.bottomRight;
                            });
                          }),
                    ]),
                    Row(children: [
                      Text("Center"),
                      Radio(
                          value: Alignment.center,
                          groupValue: alignment,
                          onChanged: (align) {
                            setState(() {
                              alignment = Alignment.center;
                            });
                          })
                    ]),
                    Row(children: [
                      Text("Center Left"),
                      Radio(
                          value: Alignment.centerLeft,
                          groupValue: alignment,
                          onChanged: (align) {
                            setState(() {
                              alignment = Alignment.centerLeft;
                            });
                          })
                    ]),
                    Row(children: [
                      Text("Center Right"),
                      Radio(
                          value: Alignment.centerRight,
                          groupValue: alignment,
                          onChanged: (align) {
                            setState(() {
                              alignment = Alignment.centerRight;
                            });
                          })
                    ]),
                    Row(children: [
                      Text("Top Center"),
                      Radio(
                          value: Alignment.topCenter,
                          groupValue: alignment,
                          onChanged: (align) {
                            setState(() {
                              alignment = Alignment.topCenter;
                            });
                          })
                    ]),
                    Row(children: [
                      Text("Top Left"),
                      Radio(
                          value: Alignment.topLeft,
                          groupValue: alignment,
                          onChanged: (align) {
                            setState(() {
                              alignment = Alignment.topLeft;
                            });
                          }),
                    ]),
                    Row(children: [
                      Text("Top Right"),
                      Radio(
                          value: BorderDirectional(),
                          groupValue: alignment,
                          onChanged: (align) {
                            setState(() {
                              alignment = Alignment.topRight;
                            });
                          }),
                    ]),
                    // Row(children: [
                    //   Text("BorderDirectional"),
                    //   Radio(
                    //       value:
                    //       Alignment.lerp(
                    //           Alignment.bottomCenter, Alignment.center, 2),
                    //       groupValue: alignment,
                    //       onChanged: (align) {
                    //         setState(() {
                    //           // alignment = Alignment.lerp(
                    //           //     Alignment.bottomCenter, Alignment.center, 2)!;
                    //         });
                    //       }),
                    // ]),
                    Row(children: [
                      Text("Alignment"),
                      Radio(
                          value: Alignment(20, 30),
                          groupValue: alignment,
                          onChanged: (align) {
                            setState(() {
                              alignment = Alignment(20, 30);
                            });
                          }),
                    ]),
                    Row(children: [
                      Text("Fractional Offset"),
                      Radio(
                          value: FractionalOffset(40, 20),
                          groupValue: alignment,
                          onChanged: (align) {
                            setState(() {
                              alignment = FractionalOffset(40, 20);
                            });
                          }),
                    ])
                  ],
                ),
              ),
            ),
          ),
          expanded(
              title: "Child",
              subTitle: "to which child we want to add alignment",
              singleproperty: "child",
              choose: "nothing"),
          expanded(
              title: "Height Factor",
              subTitle: "",
              singleproperty: "heightFactor",
              choose: "slide",
              child: Slider(
                  divisions: 2,
                  value: heightFactor,
                  min: 0.0,
                  max: 100.0,
                  label: heightFactor.toString(),
                  onChanged: (value) {
                    setState(() {
                      heightFactor = value;
                    });
                  })),
          expanded(
              title: "Width Factor",
              subTitle: "",
              singleproperty: "widthFactor",
              choose: "slide",
              child: Slider(
                  divisions: 2,
                  value: widthFactor,
                  min: 0.0,
                  max: 100.0,
                  label: widthFactor.toString(),
                  onChanged: (value) {
                    setState(() {
                      widthFactor = value;
                    });
                  })),
        ],
      )),
    );
  }

  Widget expanded({
    required String title,
    required String subTitle,
    required String singleproperty,
    required String choose,
    Widget? child,
  }) {
    return ExpansionTile(
      leading: Checkbox(
          value: isEnabledProperty[singleproperty],
          onChanged: (value) {
            setState(() {
              isEnabledProperty[singleproperty] = value!;
            });
          }),
      title: Text(title),
      subtitle: Text(subTitle),
      children: [if (choose == "radio") child!, if (choose == "slide") child!],
    );
  }
}
