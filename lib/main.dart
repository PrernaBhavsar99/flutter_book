import 'package:flutter/material.dart';
import 'package:flutter_book/constants/widget_list.dart';
import 'package:flutter_book/custom_widgets/custom_widgets.dart';
import 'package:flutter_book/router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
        children: WIDGETS_LIST.map((e) {
          return CustomWidgets.customGridButton(label: e, ctx: context);
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
