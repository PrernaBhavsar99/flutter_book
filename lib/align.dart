import 'package:flutter/material.dart';

class AlignWidget extends StatefulWidget {
  const AlignWidget({Key? key}) : super(key: key);
  static const route = "/align";
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
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
          child: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12),
            height: size.height * 0.5,
            color: Colors.amber,
            alignment: Alignment.center,
            child: Align(
              alignment: alignment
              //isEnabledProperty["alignment"]?alignment:null,
              ,
              child: isEnabledProperty["child"]!
                  ? FlutterLogo(
                      size: 200,
                    )
                  : null,
              heightFactor:
                  isEnabledProperty["heightFactor"]! ? heightFactor : null,
              widthFactor:
                  isEnabledProperty["widthFactor"]! ? widthFactor : null,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          expanded(
            title: "Alignment",
            subTitle: "To give alignment to widget",
            singleProperty: "alignment",
            choose: "radio",
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 100,
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
                          value: Alignment.topRight,
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
                          value: FractionalOffset(20, 20),
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
              singleProperty: "child",
              choose: "nothing"),
          expanded(
              title: "Height Factor",
              subTitle: "",
              singleProperty: "heightFactor",
              choose: "slide",
              child: Slider(
                  divisions: 2,
                  value: heightFactor,
                  min: 0.0,
                  max: size.height * 0.03,
                  label: heightFactor.toString(),
                  onChanged: (value) {
                    setState(() {
                      heightFactor = value;
                    });
                  })),
          expanded(
              title: "Width Factor",
              subTitle: "",
              singleProperty: "widthFactor",
              choose: "slide",
              child: Slider(
                  divisions: 2,
                  value: widthFactor,
                  min: 0.0,
                  max: size.width * 0.2,
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
