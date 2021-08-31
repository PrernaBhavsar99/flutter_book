import 'package:flutter/material.dart';
import 'package:flutter_book/custom_widgets/custom_widgets.dart';

class OutlinedbuttonWidget extends StatelessWidget {
  static const routeName = '/outlined_button';
  const OutlinedbuttonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidgets.customAppbar(
          label: "Outlined Button", ctx: context, codeIcon: true, code: ''),
      body: Center(
        child: Text("Outlined Button"),
      ),
    );
  }
}
