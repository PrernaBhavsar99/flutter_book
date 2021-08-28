import 'package:flutter/material.dart';

class BaseLineWidget extends StatefulWidget {
  const BaseLineWidget({Key? key}) : super(key: key);
  static const route = "/baseline";

  @override
  _BaseLineWidgetState createState() => _BaseLineWidgetState();
}

class _BaseLineWidgetState extends State<BaseLineWidget> {
  Map<String, bool> isEnabledProperty = {
    "baseline": true,
    "child": true,
    "baselineType": true,
  };
  TextBaseline baselineType = TextBaseline.alphabetic;
  var baseline = 0.1;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              child: Baseline(
                baseline: baseline,
                baselineType: baselineType,
                child: Text("BaseLine",style: TextStyle(fontSize: 20),),
              ),
            ),
            ExpansionTile(
                title: Text("baseLine"),
                subtitle: Text(""),
                children: [
                  Slider(
                      divisions: 1,
                      value: baseline,
                      min: 0.0,
                      max: size.height * 0.5,
                      label: baseline.toString(),
                      onChanged: (value) {
                        setState(() {
                          baseline = value;
                        });
                      })
                ]),
            ExpansionTile(
                title: Text("TextBaseline"),
                subtitle: Text("To give how mouse cursor will react"),
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Alphabetic"),
                      Radio(
                          value: TextBaseline.alphabetic,
                          groupValue: baselineType,
                          onChanged: (density) {
                            setState(() {
                              baselineType = TextBaseline.alphabetic;
                            });
                          }),
                      Text("Ideographic"),
                      Radio(
                          value: TextBaseline.ideographic,
                          groupValue: baselineType,
                          onChanged: (density) {
                            setState(() {
                              baselineType = TextBaseline.ideographic;
                            });
                          }),
                    ],
                  ),
                ]),
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
      title: Text(title),
      subtitle: Text(subTitle),
      children: [child!],
    );
  }
}
