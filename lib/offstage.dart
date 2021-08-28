import 'package:flutter/material.dart';

class OffStageWidget extends StatefulWidget {
  const OffStageWidget({Key? key}) : super(key: key);
  static const route = "/offstage";

  @override
  _OffStageWidgetState createState() => _OffStageWidgetState();
}

class _OffStageWidgetState extends State<OffStageWidget> {
  Map<String, bool> isEnabledProperty = {
    "offstage": true,
    "child": true,
  };
  bool offstage = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: size.height * 0.5,
              child: Offstage(
                child: isEnabledProperty["child"]! ? FlutterLogo() : null,
                offstage: offstage,
              ),
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