import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'code_viewer.dart';

class CustomWidgets {
  static PreferredSizeWidget customAppbar(
      {required String label,
      required BuildContext ctx,
      required String code,
      required bool codeIcon}) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text(
        label,
        style: Theme.of(ctx).textTheme.headline4?.copyWith(color: Colors.black),
      ),
      iconTheme: const IconThemeData(color: Colors.black),
      actions: [
        if (codeIcon)
          IconButton(
            onPressed: () {
              Navigator.pushNamed(ctx, CodeViewer.routeName,
                  arguments: {"code": code, "label": label});
            },
            icon: const Icon(Icons.code),
          )
      ],
    );
  }

  static ObstructingPreferredSizeWidget customCupertinoNavBar(
      {required String label,
      required BuildContext ctx,
      required String code,
      required bool codeIcon}) {
    return CupertinoNavigationBar(
      backgroundColor: Colors.white,
      middle: Text(label),
      trailing: codeIcon
          ? CupertinoButton(
              child: const Icon(Icons.code),
              onPressed: () {
                Navigator.pushNamed(ctx, CodeViewer.routeName,
                    arguments: {"code": code, "label": label});
              },
            )
          : null,
    );
  }

  static Widget customGridButton(
      {required String label, required BuildContext ctx}) {
    final name = label.replaceAll(" ", "_").toLowerCase();
    // print("assets/images/$name.png");
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(colors: [
          Colors.white.withOpacity(0.5),
          Colors.black.withOpacity(0.5)
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(15),
          onTap: () {
            Navigator.pushNamed(
              ctx,
              "/" + name,
            );
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  label,
                  textAlign: TextAlign.center,
                  style: Theme.of(ctx).textTheme.headline5,
                ),
              ),
              Image.asset(
                "assets/images/$name.png",
                width: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
