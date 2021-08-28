import 'package:flutter/material.dart';

class LimitedBoxWidget extends StatefulWidget {
  const LimitedBoxWidget({Key? key}) : super(key: key);
  static const route = "/limitedBox";

  @override
  _LimitedBoxWidgetState createState() => _LimitedBoxWidgetState();
}

class _LimitedBoxWidgetState extends State<LimitedBoxWidget> {
  Map<String, bool> isEnabledProperty = {
    "child": true,
    "maxHeight": true,
    "maxWidth": true
  };
  double maxHeight = 0.0;
  double maxWidth = 0.0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: size.height * 0.5,
              child: LimitedBox(
                child: Text("Limited Box"),
                maxHeight: maxHeight,
                maxWidth: maxWidth,
              ),
            ),
            expanded(
                title: "Height Factor",
                subTitle: "",
                singleProperty: "maxHeight",
                choose: "slide",
                child: Slider(
                    divisions: 2,
                    value: maxHeight,
                    min: 0.0,
                    max: size.height * 0.03,
                    label: maxHeight.toString(),
                    onChanged: (value) {
                      setState(() {
                        maxHeight = value;
                      });
                    })),
            expanded(
                title: "Width Factor",
                subTitle: "",
                singleProperty: "maxWidth",
                choose: "slide",
                child: Slider(
                    divisions: 2,
                    value: maxWidth,
                    min: 0.0,
                    max: size.width * 0.2,
                    label: maxWidth.toString(),
                    onChanged: (value) {
                      setState(() {
                        maxWidth = value;
                      });
                    })),
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
//radio 
//slide
//switch
//nothing