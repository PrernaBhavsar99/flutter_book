import 'package:flutter/material.dart';
import 'package:flutter_book/custom_widgets/custom_widgets.dart';

class CodeViewer extends StatelessWidget {
  static const routeName = '/codeViewer';
  final String label;
  final String code;
  const CodeViewer({Key? key, required this.label, required this.code})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidgets.customAppbar(
          label: "Code", ctx: context, codeIcon: false),
      body: Text(code),
    );
  }
}
