import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/outlined_button.dart';

import 'main.dart';
import 'widgets/elevated_button.dart';

class GeneratorRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Home.routeName:
        return MaterialPageRoute(builder: (context) => Home());
      case Elevatedbutton.routeName:
        return MaterialPageRoute(builder: (context) => Elevatedbutton());
      case Outlinedbutton.routeName:
        return MaterialPageRoute(builder: (context) => Outlinedbutton());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
