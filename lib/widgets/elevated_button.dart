import 'package:flutter/material.dart';

import '../custom_widgets/custom_widgets.dart';

class ElevatedButtonWidget extends StatelessWidget {
  static const routeName = '/elevated_button';
  const ElevatedButtonWidget({Key? key}) : super(key: key);

  final String code = '''
class ElevatedButton extends StatelessWidget {
  const ElevatedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text("Elevated Button"),
      autofocus: true, // Autofocus the button
    );
  }
}
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidgets.customAppbar(
          label: "Elevated Button", ctx: context, codeIcon: true, code: code),
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
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Elevated Button"),
                  ),
                  const ElevatedButton(
                    onPressed: null,
                    child: Text("Disabled Elevated Button"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
