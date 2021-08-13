import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_book/custom_widgets/custom_widgets.dart';

class CupertinoActionSheetWidget extends StatefulWidget {
  static const routeName = '/cupertino_action_sheet';
  const CupertinoActionSheetWidget({Key? key}) : super(key: key);

  @override
  _CupertinoActionSheetWidgetState createState() =>
      _CupertinoActionSheetWidgetState();
}

class _CupertinoActionSheetWidgetState
    extends State<CupertinoActionSheetWidget> {
  String title = "Title";
  String message = "Message";
  int actionCount = 2;

  List<Widget> get _actionSheet {
    List<Widget> actionSheet = [];
    for (var i = 1; i < actionCount + 1; i++) {
      actionSheet.add(CupertinoActionSheetAction(
        child: Text("Action $i"),
        onPressed: () {
          Navigator.pop(context);
        },
      ));
    }

    return actionSheet;
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.white,
      navigationBar: CustomWidgets.customCupertinoNavBar(
          label: "Cupertino Action Sheet", ctx: context, codeIcon: true),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CupertinoTextField(
                enabled: false,
                textAlign: TextAlign.center,
                placeholder: title,
                placeholderStyle: TextStyle(
                    color: Colors.black, backgroundColor: Colors.white),
                decoration: BoxDecoration(color: Colors.transparent),
              ),
              CupertinoButton(
                onPressed: () {
                  showCupertinoModalPopup(
                    context: context,
                    builder: (BuildContext context) => CupertinoActionSheet(
                        cancelButton: CupertinoActionSheetAction(
                          child: const Text('Cancel'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        title: Text(title),
                        message: Text(message),
                        actions: _actionSheet),
                  );
                },
                child: const Text('Cupertino Action Sheet'),
              ),
              CupertinoButton(
                onPressed: () {
                  showCupertinoModalPopup(
                    context: context,
                    builder: (BuildContext context) => CupertinoActionSheet(
                      cancelButton: CupertinoActionSheetAction(
                        child: const Text('Cancel'),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      title: CupertinoTextField(
                        placeholder: 'Title',
                        onChanged: (value) {
                          setState(() {
                            title = value;
                          });
                        },
                      ),
                      message: CupertinoTextField(
                        placeholder: 'Message',
                        onChanged: (value) {
                          setState(() {
                            message = value;
                          });
                        },
                      ),
                      actions: [],
                    ),
                  );
                },
                child: const Text('Edit Cupertino Action Sheet'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
