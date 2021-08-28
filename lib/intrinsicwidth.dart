import 'package:flutter/material.dart';

class IntrinsicWidthWidget extends StatefulWidget {
  const IntrinsicWidthWidget({Key? key}) : super(key: key);

  static const route = "/intrinsicWidth";

  @override
  _IntrinsicWidthWidgetState createState() => _IntrinsicWidthWidgetState();
}

class _IntrinsicWidthWidgetState extends State<IntrinsicWidthWidget> {
  Map<String, bool> isEnabledProperty = {
    "child": true,
  };
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: size.height * 0.5,
              child: IntrinsicWidth(
                child: Text("intrinsic width"),
              ),
            ),
            ExpansionTile(
              leading: Checkbox(
                  value: isEnabledProperty["child"],
                  onChanged: (value) {
                    setState(() {
                      isEnabledProperty["child"] = value!;
                    });
                  }),
              title: Text("Child"),
              subtitle: Text(""),
            )
          ],
        ),
      ),
    );
  }
}
//radio 
//slide
//switch
//nothing