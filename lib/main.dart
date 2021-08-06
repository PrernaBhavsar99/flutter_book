import 'package:flutter/material.dart';
import 'package:flutter_book/custome_widgets/custom_widgets.dart';
import 'package:flutter_book/router.dart';
import 'constants/widget_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(
        "assets/images/${"Elevated Button".replaceAll(" ", "_").toLowerCase()}.png");
    return MaterialApp(
      title: 'Flutter Book',
      onGenerateRoute: GeneratorRouter.generateRoute,
      initialRoute: Home.routeName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
        canvasColor: Colors.white,
        textTheme: TextTheme(
          button: TextStyle(color: Colors.white),
          bodyText1: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 26),
          bodyText2: const TextStyle(fontWeight: FontWeight.w500, fontSize: 34),
          headline1: const TextStyle(fontWeight: FontWeight.w500, fontSize: 32),
          headline2: const TextStyle(fontWeight: FontWeight.w500, fontSize: 28),
          headline3: const TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
          headline4: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          headline5: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
          headline6: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  static const routeName = "/";
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidgets.customAppbar(label: "Flutter Book", ctx: context),
      body: GridView(
        padding: const EdgeInsets.all(25),
        children: WIDGETS_LIST.map((e) {
          final name = e.replaceAll(" ", "_").toLowerCase();
          return CustomWidgets.customGridButton(label: name, context: context);
        }).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
