import 'package:flutter/material.dart';
import 'package:flutter_book/custom_widgets/code_viewer.dart';
import 'package:flutter_book/widgets/outlined_button.dart';

import 'main.dart';
import 'widgets/elevated_button.dart';

class GeneratorRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final data = ModalRoute.of(context)!.settings.arguments;
    switch (settings.name) {
      case Home.routeName:
        return MaterialPageRoute(builder: (context) => Home());
      case Elevatedbutton.routeName:
        return MaterialPageRoute(builder: (context) => Elevatedbutton());
      case Outlinedbutton.routeName:
        return MaterialPageRoute(builder: (context) => Outlinedbutton());
      case CodeViewer.routeName:
        return MaterialPageRoute(
            builder: (context) => CodeViewer(
                  code: '',
                  label: '',
                ));
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
