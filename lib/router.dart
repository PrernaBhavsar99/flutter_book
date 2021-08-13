import 'package:flutter/material.dart';
import 'package:flutter_book/custom_widgets/code_viewer.dart';
import 'package:flutter_book/widgets/cupertino_action_sheet.dart';
import 'package:flutter_book/widgets/outlined_button.dart';

import 'main.dart';
import 'widgets/elevated_button.dart';

class GeneratorRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Home.routeName:
        return MaterialPageRoute(builder: (context) {
          return Home();
        });
      case Elevatedbutton.routeName:
        return MaterialPageRoute(builder: (context) {
          final data = ModalRoute.of(context)!.settings.arguments;
          return Elevatedbutton();
        });
      case Outlinedbutton.routeName:
        return MaterialPageRoute(builder: (context) => Outlinedbutton());
      case CupertinoActionSheetWidget.routeName:
        return MaterialPageRoute(
            builder: (context) => CupertinoActionSheetWidget());
      case CodeViewer.routeName:
        return MaterialPageRoute(
          builder: (context) => CodeViewer(
            code: '',
            label: '',
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
