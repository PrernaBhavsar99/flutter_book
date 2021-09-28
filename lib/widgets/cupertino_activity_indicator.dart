import 'package:flutter/cupertino.dart';

import '../custom_widgets/custom_widgets.dart';

class CupertinoActivityIndicatorWidget extends StatelessWidget {
  static const routeName = '/cupertino_activity_indicator';
  const CupertinoActivityIndicatorWidget({Key? key}) : super(key: key);

  final String code = '''
import 'package:flutter/cupertino.dart';

class CupertinoActivityIndicatorWidget extends StatelessWidget {
  static const routeName = '/cupertino_activity_indicator';
  const CupertinoActivityIndicatorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      child: Center(
        child: CupertinoActivityIndicator(
          animating: true, // default
          radius: 10, // default
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
          label: "Cupertino Activity Indicator",
          ctx: context,
          codeIcon: true,
          code: code),
      child: const Center(
        child: CupertinoActivityIndicator(
          animating: true,
          radius: 40,
        ),
      ),
    );
  }
}
