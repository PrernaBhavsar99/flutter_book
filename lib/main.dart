import 'package:flutter/material.dart';
import 'package:flutter_book/baseline.dart';
import 'package:flutter_book/center.dart';
import 'package:flutter_book/firstPage.dart';
import 'package:flutter_book/gridTiles.dart';
import 'package:flutter_book/gridtile.dart';
import 'package:flutter_book/intrinsicheight.dart';
import 'package:flutter_book/intrinsicwidth.dart';
import 'package:flutter_book/limitedbox.dart';
import 'package:flutter_book/listtile.dart';
import 'package:flutter_book/listview.dart';
import 'aspect_ratio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_book/align.dart';
import 'package:flutter_book/aspect_ratio.dart';
import 'package:flutter_book/constrained_box.dart';
import 'package:flutter_book/expanded.dart';
import 'package:flutter_book/fitted_box.dart';
import 'package:flutter_book/fractionally_sized_box.dart';
import 'package:flutter_book/gridpaper.dart';
import 'package:flutter_book/offstage.dart';
import 'package:flutter_book/overflowbox.dart';
import 'package:flutter_book/padding.dart';
import 'package:flutter_book/sizedbox.dart';
import 'package:flutter_book/sizedoverflowbox.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(),
      routes: {
        AlignWidget.route: (ctx) => AlignWidget(),
        AspectRatioWidget.route: (ctx) => AspectRatioWidget(),
        BaseLineWidget.route: (ctx) => BaseLineWidget(),
        CenterWidget.route: (ctx) => CenterWidget(),
        ConstrainedBoxWidget.route: (ctx) => ConstrainedBoxWidget(),
        ExpandedWidget.route: (ctx) => ExpandedWidget(),
        FittedBoxWidget.route: (ctx) => FittedBoxWidget(),
        FractionalSizedBoxWidget.route: (ctx) => FractionalSizedBoxWidget(),
        GridPaperWidget.route: (ctx) => GridPaperWidget(),
        GridTileBarWidgets.route: (ctx) => GridTileBarWidgets(),
        GridTileWidgets.route: (ctx) => GridTileWidgets(),
        IntrinsicHeightWidget.route: (ctx) => IntrinsicHeightWidget(),
        IntrinsicWidthWidget.route: (ctx) => IntrinsicWidthWidget(),
        LimitedBoxWidget.route: (ctx) => LimitedBoxWidget(),
        ListTileWidget.route: (ctx) => ListTileWidget(),
        ListViewWidget.route: (ctx) => ListViewWidget(),
        OffStageWidget.route: (ctx) => OffStageWidget(),
        OverflowBoxWidget.route: (ctx) => OverflowBoxWidget(),
        PaddingWidget.route: (ctx) => PaddingWidget(),
        SizedBoxWidget.route: (ctx) => SizedBoxWidget(),
        SizedOverflowBoxWidget.route: (ctx) => SizedOverflowBoxWidget(),
      },
    );
  }
}
