import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/cupertino_alert_dialog.dart';

import 'custom_widgets/code_viewer.dart';
import 'main.dart';
import 'widgets/cupertino_action_sheet.dart';
import 'widgets/cupertino_activity_indicator.dart';
import 'widgets/elevated_button.dart';
import 'widgets/outlined_button.dart';

class GeneratorRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Home.routeName:
        return MaterialPageRoute(builder: (context) {
          return const Home();
        });
      case ElevatedButtonWidget.routeName:
        return MaterialPageRoute(builder: (context) {
          return const ElevatedButtonWidget();
        });
      case OutlinedButtonWidget.routeName:
        return MaterialPageRoute(
            builder: (context) => const OutlinedButtonWidget());
      case CupertinoActionSheetWidget.routeName:
        return MaterialPageRoute(
            builder: (context) => CupertinoActionSheetWidget());
      case CupertinoActivityIndicatorWidget.routeName:
        return MaterialPageRoute(
            builder: (context) => const CupertinoActivityIndicatorWidget());
      case CupertinoAlertDialogWidget.routeName:
        return MaterialPageRoute(
            builder: (context) => const CupertinoAlertDialogWidget());
      case CodeViewer.routeName:
        final map = settings.arguments as Map;
        return MaterialPageRoute(
          builder: (context) =>
              CodeViewer(code: map["code"], label: map["label"]),
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
