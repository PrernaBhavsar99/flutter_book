import 'package:flutter/material.dart';

class FittedBoxWidget extends StatefulWidget {
  const FittedBoxWidget({Key? key}) : super(key: key);
  static const route = "/fittedBox";

  @override
  _FittedBoxWidgetState createState() => _FittedBoxWidgetState();
}

class _FittedBoxWidgetState extends State<FittedBoxWidget> {
  Map<String, bool> isEnabledProperty = {
    "alignment": true,
    "child": true,
    "heightFactor": true,
    "widthFactor": true
  };
  var alignment = Alignment.bottomCenter;
  var fit = BoxFit.contain;
  Clip clip = Clip.antiAlias;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
            child: ListView(children: [
      Container(
        height: size.height * 0.5,
        child: FittedBox(
          alignment: alignment,
          child: Image.network(""),
          clipBehavior: clip,
          fit: fit,
        ),
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
                  ]),
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
                    title: "Clip Behaviour",
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
                                    value: BoxFit.contain,
                                    groupValue: fit,
                                    onChanged: (align) {
                                      setState(() {
                                        fit = BoxFit.contain;
                                      });
                                    }),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Bottom Left"),
                                Radio(
                                    value: BoxFit.cover,
                                    groupValue: fit,
                                    onChanged: (align) {
                                      setState(() {
                                        fit = BoxFit.cover;
                                      });
                                    }),
                              ],
                            ),
                            Row(children: [
                              Text("Bottom Right"),
                              Radio(
                                  value: BoxFit.fill,
                                  groupValue: fit,
                                  onChanged: (align) {
                                    setState(() {
                                      fit = BoxFit.fill;
                                    });
                                  }),
                            ]),
                            Row(children: [
                              Text("Center"),
                              Radio(
                                  value: BoxFit.fitHeight,
                                  groupValue: fit,
                                  onChanged: (align) {
                                    setState(() {
                                      fit = BoxFit.fitHeight;
                                    });
                                  })
                            ]),
                          ],
                        ),
                      ),
                    ),
                  ),
                  expanded(
                    title: "Clip Behaviour",
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
                                    value: Clip.antiAlias,
                                    groupValue: fit,
                                    onChanged: (align) {
                                      setState(() {
                                        clip = Clip.antiAlias;
                                      });
                                    }),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Bottom Left"),
                                Radio(
                                    value: Clip.antiAliasWithSaveLayer,
                                    groupValue: clip,
                                    onChanged: (align) {
                                      setState(() {
                                        clip = Clip.antiAliasWithSaveLayer;
                                      });
                                    }),
                              ],
                            ),
                            Row(children: [
                              Text("Bottom Right"),
                              Radio(
                                  value: Clip.hardEdge,
                                  groupValue: clip,
                                  onChanged: (align) {
                                    setState(() {
                                      clip = Clip.hardEdge;
                                    });
                                  }),
                            ]),
                            Row(children: [
                              Text("Center"),
                              Radio(
                                  value: Clip.none,
                                  groupValue: clip,
                                  onChanged: (align) {
                                    setState(() {
                                      clip = Clip.none;
                                    });
                                  })
                            ]),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ))
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
      children: [if (choose == "radio") child!, if (choose == "slide") child!],
    );
  }
}
//radio 
//slide
//switch
//nothing