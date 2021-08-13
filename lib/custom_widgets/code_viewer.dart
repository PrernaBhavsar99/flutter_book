import 'package:flutter/material.dart';

import 'custom_widgets.dart';

class CodeViewer extends StatelessWidget {
  static const routeName = '/codeViewer';
  final String label;
  final String code;
  const CodeViewer({required this.label, required this.code});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidgets.customAppbar(
          label: label, ctx: context, codeIcon: false),
      body: Text(code),
    );
  }
}
