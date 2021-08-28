import 'package:flutter/material.dart';

class AspectRatioWidget extends StatefulWidget {
  const AspectRatioWidget({Key? key}) : super(key: key);
  static const route = "/aspectRatio";

  @override
  _AspectRatioWidgetState createState() => _AspectRatioWidgetState();
}

class _AspectRatioWidgetState extends State<AspectRatioWidget> {
  Map<String, bool> isEnabledProperty = {
    "aspectRatio": true,
    "child": true,
  };
  double aspectRatio = 0.1;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
           
             AspectRatio(
                  aspectRatio: aspectRatio, child: Container(color: Colors.black,)),
            
            expanded(
                title: "Aspect Ratio",
                subTitle: "",
                singleProperty: "aspectRatio",
                choose: "slide",
                child: Slider(
                    divisions: 1,
                    value: aspectRatio,
                    min: 0.1,
                    max: size.aspectRatio,
                    label: aspectRatio.toString(),
                    onChanged: (value) {
                      setState(() {
                        aspectRatio = value;
                      });
                    })),
            expanded(
                title: "Child",
                subTitle: "to which child we want to add alignment",
                singleProperty: "child",
                choose: "nothing"),
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
