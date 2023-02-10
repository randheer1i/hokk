// import 'dart:math';
// import 'package:flutter/material.dart';




//1

// void main ()=> runApp(
//   MaterialApp(
//     home: Text("Without SafeArea",
//     style: TextStyle(
//       fontSize: 40.0,
//       fontStyle: FontStyle.italic,
//       color: Colors.red
//     ),
//     ),
//   )
// );

// void main()=> runApp(
//   MaterialApp(
//   home: SafeArea(
//     child: Text("With safeArea",
//     textAlign: TextAlign.center,
//     style: TextStyle(
//       fontSize: 40.0,
//       fontStyle: FontStyle.italic,
//       color: Colors.red
//     ),
//     ),
//   )
// ));

// void main() => runApp(
//   MaterialApp(
//     home:Scaffold(
//       appBar: AppBar(
//         title: Text("My second app"),
//       ),
//       body: Container(
//         child: SafeArea(
//           child: Center(
//             child: Text("This is Body"),
//           ),
//         ),
//       ),
//     )
//   )
// );

//multiple widgets--------------------------------------------------------

// import 'package:flutter/material.dart';
// import 'dart:math';
// import 'package:audioplayers/src/audio_cache.dart';

// void main()=> runApp(
//   MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text("3rd app"),
//       ),
//       body: Row(
        
//        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//         FirstChild(),
//         SecondChild(),
//         ThirdChild(),
//       ]),
//     )
//   )
// );

// void main()=> runApp(
//   MaterialApp(
//     home: Homepage(),
//   )
// );


// class Homepage extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return Scaffold( appBar: AppBar(
//       title: Text("3rd app"),
//     ),
//     body: Column(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Row( mainAxisAlignment: MainAxisAlignment.start, children: [FirstChild()],),
//         Row( mainAxisAlignment: MainAxisAlignment.center, children: [SecondChild()],),
//         Row( mainAxisAlignment: MainAxisAlignment.end, children: [ThirdChild()],),
//       ],
//     ),);
//   }
// }


// class FirstChild extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return Container(
//       width: 100,
//       height: 100,
//       color: Colors.red,
//     );
//   }
// }
// class SecondChild extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return Container(
//       width: 100,
//       height: 100,
//       color: Colors.blue,
//     );
//   }
// }
// class ThirdChild extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return Container(
//       width: 100,
//       height: 100,
//        color: Colors.green,
     
//     );
//   }
// }
//DICEE----------------------------------------------------------------------------------------------------------

// import 'package:flutter/material.dart';
// import 'dart:math';
// import 'package:audioplayers/src/audio_cache.dart';
// void main() => runApp(
//   MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text("DICEE"),
//       ),
//       body: DicePage(),
//     ),
//   )
// );

// class DicePage extends StatefulWidget{
//   const DicePage({Key?key}):super(key:key);
//   @override
//  _DicePageState createState() => _DicePageState();
// }

// class _DicePageState extends State<DicePage>
// {
//   int left = 1;
//   int right = 2;
//   void changeFace(){
//     setState(() {
//       left = Random().nextInt(6)+1;
//       right = Random().nextInt(6)+1;
//     });
//   }
//   @override
//   Widget build (BuildContext context)
//   {
//     return Center(
//       child: Container(
//         child: Row(
//           children: [
//             Expanded(
//               flex: 1,
//               child: TextButton(
//                 style: TextButton.styleFrom(
//                   backgroundColor: Colors.red,
//                 ),
//                 child: Image.asset('./images/dice$left.png'),
//                 onPressed: (){
//                   changeFace();
//                 },
//               ),
//             ),
//             Expanded(
//               flex: 1,
//               child: TextButton(
//                 style: TextButton.styleFrom(
//                   backgroundColor: Colors.red,
//                 ),
//                 child: Image.asset('./images/dice$right.png'),
//                 onPressed: (){
//                   changeFace();
//                 },
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
//------------------------------------------------------------------------xylophone
// ignore_for_file: avoid_print

// import 'package:audioplayers/audioplayers.dart';
// import 'package:flutter/material.dart';
// import 'dart:math';

// void main() => runApp(MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("XYLOPHONE"),
//         ),
//         body: XyloPage(),
//       ),
//     ));

// class XyloPage extends StatefulWidget {
//   const XyloPage({Key? key}) : super(key: key);

//   @override
//   _XyloPageState createState() => _XyloPageState();
// }

// class _XyloPageState extends State<XyloPage> {
//   int left = 1;
//   int right = 2;
//   void changeFace() {
//     setState(() {
//       left = Random().nextInt(7) + 1;
//       right = Random().nextInt(7) + 1;
//     });
//   }

//   void playSound(int i) async {
//     // i is the number we pass to String note$i.wav
//     final player = AudioPlayer();
//     await player.play(AssetSource('assets_note$i.wav'));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
//         Expanded(
//           child: TextButton(
//             child: Text("1"),
//             onPressed: () {
//               playSound(1);
//             },
//             style: TextButton.styleFrom(backgroundColor: Colors.red),
//           ),
//         ),
//         Expanded(
//           child: TextButton(
//             child: Text("2"),
//             onPressed: () {
//               playSound(2);
//             },
//             style: TextButton.styleFrom(backgroundColor: Colors.blue),
//           ),
//         ),
//         Expanded(
//           child: TextButton(
//             child: Text("3"),
//             onPressed: () {
//               playSound(3);
//             },
//             style: TextButton.styleFrom(backgroundColor: Colors.green),
//           ),
//         ),
//         Expanded(
//           child: TextButton(
//             child: Text("4"),
//             onPressed: () {
//               playSound(4);
//             },
//             style: TextButton.styleFrom(backgroundColor: Colors.black),
//           ),
//         )
//       ]),
//     );
//   }
// }



