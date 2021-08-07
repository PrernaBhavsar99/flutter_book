import 'package:flutter/material.dart';
import 'package:flutter_book/custom_widgets/custom_widgets.dart';

class Elevatedbutton extends StatelessWidget {
  static const routeName = '/elevated_button';
  const Elevatedbutton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          CustomWidgets.customAppbar(label: "Elevated Button", ctx: context, codeIcon: true),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Elevated Button are use to Create buttons that have tapping functionality to perform an action.",
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Elevated Button"),
                ),
                ElevatedButton(
                  onPressed: null,
                  child: Text("Disabled Elevated Button"),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
