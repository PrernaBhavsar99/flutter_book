import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_book/custom_widgets/custom_widgets.dart';

class CupertinoActionSheetWidget extends StatelessWidget {
  static const routeName = '/cupertino_action_sheet';
  CupertinoActionSheetWidget({Key? key}) : super(key: key);

  final ScrollController _scroll = ScrollController();
  final ScrollController _messageScroll = ScrollController();

  final String code = '''
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActionSheetWidget extends StatelessWidget {
  CupertinoActionSheetWidget({Key? key}) : super(key: key);

  final ScrollController _scroll = ScrollController();
  final ScrollController _messageScroll = ScrollController();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoButton(
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (BuildContext context) => CupertinoActionSheet(
                  actionScrollController: _scroll,
                  messageScrollController: _messageScroll,
                  cancelButton: CupertinoActionSheetAction(
                    child: const Text('Cancel'),
                    isDestructiveAction:
                        true, // Whether this action might change or delete data. Destructive buttons have red text.
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  title: const Text("Title"),
                  message: const Text("Message"),
                  actions: [
                    CupertinoActionSheetAction(
                      isDefaultAction:
                          true, // Whether this action is the default choice in the action sheet.
                      child: const Text("Action 1"),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    CupertinoActionSheetAction(
                      child: const Text("Action 2"),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )
                  ]),
            );
          },
          child: const Text('Cupertino Action Sheet'),
        ),
      ),
    );
  }
}
''';

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CustomWidgets.customCupertinoNavBar(
          label: "Cupertino Action Sheet",
          ctx: context,
          codeIcon: true,
          code: code),
      child: Center(
        child: CupertinoButton(
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (BuildContext context) => CupertinoActionSheet(
                  actionScrollController: _scroll,
                  messageScrollController: _messageScroll,
                  cancelButton: CupertinoActionSheetAction(
                    child: const Text('Cancel'),
                    isDestructiveAction:
                        true, // Whether this action might change or delete data. Destructive buttons have red text.
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  title: const Text("Title"),
                  message: const Text("Message"),
                  actions: [
                    CupertinoActionSheetAction(
                      isDefaultAction:
                          true, // Whether this action is the default choice in the action sheet.
                      child: const Text("Action 1"),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    CupertinoActionSheetAction(
                      child: const Text("Action 2"),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )
                  ]),
            );
          },
          child: const Text('Open Cupertino Action Sheet'),
        ),
      ),
    );
  }
}
