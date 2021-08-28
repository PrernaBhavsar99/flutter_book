import 'package:flutter/material.dart';

class IntrinsicHeightWidget extends StatefulWidget {
  const IntrinsicHeightWidget({Key? key}) : super(key: key);
  static const route = "/intrinsicHeight";

  @override
  _IntrinsicHeightWidgetState createState() => _IntrinsicHeightWidgetState();
}

class _IntrinsicHeightWidgetState extends State<IntrinsicHeightWidget> {
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
              child: IntrinsicHeight(
                child: Text("intrinsic height"),
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