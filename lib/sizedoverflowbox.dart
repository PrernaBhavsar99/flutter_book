import 'package:flutter/material.dart';

class SizedOverflowBoxWidget extends StatefulWidget {
  const SizedOverflowBoxWidget({ Key? key }) : super(key: key);
  static const route = "/sizedOverflowBox";

  @override
  _SizedOverflowBoxWidgetState createState() => _SizedOverflowBoxWidgetState();
}

class _SizedOverflowBoxWidgetState extends State<SizedOverflowBoxWidget> {
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