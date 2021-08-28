// import 'package:flutter/material.dart';

// class CardWidget extends StatefulWidget {
//   const CardWidget({ Key? key }) : super(key: key);

//   @override
//   _CardWidgetState createState() => _CardWidgetState();
// }

// class _CardWidgetState extends State<CardWidget> {
//    Map<String, bool> isEnabledProperty = {
//     "alignment": true,
//     "child": true,
//     "heightFactor": true,
//     "widthFactor": true
//   };
//   @override
//   Widget build(BuildContext context) {
//       Size size = MediaQuery.of(context).size;
//     return  Scaffold(
//       body: SafeArea(
//         child: ListView(
//           children: [
//             Container(
//               height: size.height * 0.5,
//               child: ,
//             )
//           ],
//         ),
//       ),
//     );
//   }
//    Widget expanded({
//     required String title,
//     required String subTitle,
//     required String singleProperty,
//     required String choose,
//     Widget? child,
//   }) {
//     return ExpansionTile(
//       leading: Checkbox(
//           value: isEnabledProperty[singleProperty],
//           onChanged: (value) {
//             setState(() {
//               isEnabledProperty[singleProperty] = value!;
//             });
//           }),
//       title: Text(title),
//       subtitle: Text(subTitle),
//       children: [if (choose == "radio") child!, if (choose == "slide") child!],
//     );
//   }
// }
// //radio 
// //slide
// //switch
// //nothing