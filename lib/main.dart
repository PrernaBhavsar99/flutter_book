import 'package:flutter/material.dart';

import 'constants/widget_list.dart';
import 'custom_widgets/custom_widgets.dart';
import 'router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Book',
      onGenerateRoute: GeneratorRouter.generateRoute,
      initialRoute: Home.routeName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
        canvasColor: Colors.white,
        textTheme: const TextTheme(
          button: TextStyle(color: Colors.white),
          bodyText1: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 26),
          bodyText2: TextStyle(fontWeight: FontWeight.w500, fontSize: 34),
          headline1: TextStyle(fontWeight: FontWeight.w500, fontSize: 32),
          headline2: TextStyle(fontWeight: FontWeight.w500, fontSize: 28),
          headline3: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
          headline4: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          headline5: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
          headline6: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
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
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Flutter Book",
          style: Theme.of(context)
              .textTheme
              .headline4
              ?.copyWith(color: Colors.black),
        ),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        children: widgetList.map((e) {
          return CustomWidgets.customGridButton(label: e, ctx: context);
        }).toList(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
