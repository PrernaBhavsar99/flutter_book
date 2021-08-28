import 'package:flutter/material.dart';

class CenterWidget extends StatefulWidget {
  const CenterWidget({Key? key}) : super(key: key);
  static const route = "/center";

  @override
  _CenterWidgetState createState() => _CenterWidgetState();
}

class _CenterWidgetState extends State<CenterWidget> {
  double heightFactor = 0.0;
  double widthFactor = 0.0;

  Map<String, bool> isEnabledProperty = {
   
    "child": true,
    "heightFactor": true,
    "widthFactor": true
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
              child: Center(
              
                heightFactor: heightFactor,
                widthFactor: widthFactor,
                child: Text("BaseLine"),
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
