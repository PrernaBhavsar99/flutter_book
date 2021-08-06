import 'package:flutter/material.dart';
import 'package:flutter_book/custom_widgets/custom_widgets.dart';

class CodeViewer extends StatelessWidget {
  final String label;
  final String code;
  const CodeViewer({Key? key, required this.label, required this.code})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidgets.customAppbar(label: label, ctx: context),
      body: Text(code),
    );
  }
}
