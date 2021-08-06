import 'package:flutter/material.dart';

class CustomWidgets {
  static PreferredSizeWidget customAppbar(
      {required String label, required BuildContext ctx}) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text(
        label,
        style: Theme.of(ctx).textTheme.headline4?.copyWith(color: Colors.black),
      ),
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.code))],
    );
  }

  static Widget customGridButton(
      {required String label, required BuildContext context}) {
    print(label);
    final name = label.replaceAll(" ", "_").toLowerCase();
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
              context,
              "/" + name,
            );
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                label,
                style: Theme.of(context).textTheme.headline5,
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
