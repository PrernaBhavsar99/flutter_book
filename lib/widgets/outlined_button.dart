import 'package:flutter/material.dart';
import 'package:flutter_book/custom_widgets/custom_widgets.dart';

class Outlinedbutton extends StatelessWidget {
  static const routeName = '/outlined_button';
  const Outlinedbutton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          CustomWidgets.customAppbar(label: "Outlined Button", ctx: context),
      body: Center(
        child: Text("Outlined Button"),
      ),
    );
  }
}
