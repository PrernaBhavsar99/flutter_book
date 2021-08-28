import 'package:flutter/material.dart';

class SizedBoxWidget extends StatefulWidget {
  const SizedBoxWidget({ Key? key }) : super(key: key);
  static const route = "/sizedBox";

  @override
  _SizedBoxWidgetState createState() => _SizedBoxWidgetState();
}

class _SizedBoxWidgetState extends State<SizedBoxWidget> {
   Map<String, bool> isEnabledProperty = {
    "alignment": true,
    "child": true,
    "heightFactor": true,
    "widthFactor": true
  };
  @override
  Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;
    return  Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: size.height * 0.5,
             // child: ,
            )
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