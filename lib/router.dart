import 'package:flutter/material.dart';
import 'package:flutter_book/custom_widgets/code_viewer.dart';
import 'package:flutter_book/widgets/cupertino_action_sheet.dart';
import 'package:flutter_book/widgets/cupertino_activity_indicator.dart';
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
      case ElevatedbuttonWidget.routeName:
        return MaterialPageRoute(builder: (context) {
          return ElevatedbuttonWidget();
        });
      case OutlinedbuttonWidget.routeName:
        return MaterialPageRoute(builder: (context) => OutlinedbuttonWidget());
      case CupertinoActionSheetWidget.routeName:
        return MaterialPageRoute(
            builder: (context) => CupertinoActionSheetWidget());
      case CupertinoActivityIndicatorWidget.routeName:
        return MaterialPageRoute(
            builder: (context) => CupertinoActivityIndicatorWidget());
      case CodeViewer.routeName:
        final map = settings.arguments as Map;
        return MaterialPageRoute(
          builder: (context) => CodeViewer(
            code: map["code"],
            label: map["label"],
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
