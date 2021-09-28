import 'package:flutter/material.dart';

class CodeViewer extends StatelessWidget {
  static const routeName = '/codeViewer';
  final String label;
  final String code;
  const CodeViewer({Key? key, required this.label, required this.code})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(label, style: const TextStyle(color: Colors.black)),
      ),
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SelectableText(code,
              style: const TextStyle(color: Colors.black, fontSize: 12))),
    );
  }
}
