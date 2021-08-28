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

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: GridView.count(
        crossAxisCount: 3,
        children: [
          grid(property: "Align", route: AlignWidget.route, context: context),
          grid(
              property: "Aspect Ratio",
              route: AspectRatioWidget.route,
              context: context),
          grid(
              property: "BaseLine", route: AlignWidget.route, context: context),
          grid(property: "Card", route: AlignWidget.route, context: context),
          grid(property: "Center", route: AlignWidget.route, context: context),
          grid(
              property: "Constrained Box",
              route: ConstrainedBoxWidget.route,
              context: context),
          grid(
              property: "Expanded",
              route: ExpandedWidget.route,
              context: context),
          grid(
              property: "Fitted Box",
              route: FittedBoxWidget.route,
              context: context),
          grid(
              property: "Fractionally Sized Box",
              route: FractionalSizedBoxWidget.route,
              context: context),
          // grid(
          //     property: "Grid Paper",
          //     route: GridPaperWidget.route,
          //     context: context),
          grid(
              property: "GridTile", route: AlignWidget.route, context: context),
          grid(
              property: "GridTile Bar",
              route: AlignWidget.route,
              context: context),
          grid(
              property: "GridView", route: AlignWidget.route, context: context),
          grid(
              property: "Intrinsic Height",
              route: AlignWidget.route,
              context: context),
          grid(
              property: "Intrinsic Width",
              route: AlignWidget.route,
              context: context),
          grid(
              property: "Limited Box",
              route: AlignWidget.route,
              context: context),
          grid(
              property: "ListTile", route: AlignWidget.route, context: context),
          grid(
              property: "ListView", route: AlignWidget.route, context: context),
          grid(
              property: "Offstage",
              route: OffStageWidget.route,
              context: context),
          grid(
              property: "Overflow box",
              route: OverflowBoxWidget.route,
              context: context),
          grid(
              property: "Padding",
              route: PaddingWidget.route,
              context: context),
          grid(
              property: "SizedBox",
              route: SizedBoxWidget.route,
              context: context),
          grid(
              property: "SizedOverflow Box",
              route: SizedOverflowBoxWidget.route,
              context: context),
          // grid(
          //     property: "Transform",
          //     route: Transfrom,
          //     context: context),
        ],
      )),
    );
  }

  Widget grid(
      {required String property,
      required String route,
      required BuildContext context}) {
    return InkWell(
      child: GridTile(
          child: SizedBox(
            height: 150,
            width: 150,
          ),
          footer: GridTileBar(
            title: Text(
              property,
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          )),
      onTap: () {
        Navigator.pushNamed(context, route);
      },
    );
  }
}
