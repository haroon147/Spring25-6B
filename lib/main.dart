import 'package:flutter/material.dart';
import 'package:sixb_class_practice/Week6/screen_one.dart';
import 'package:sixb_class_practice/Week6/week_six_home.dart';
import 'package:sixb_class_practice/home.dart';
import 'package:sixb_class_practice/mycustom.dart';
import 'package:sixb_class_practice/week4/week4home.dart';
import 'package:sixb_class_practice/week5/week_five_home.dart';
// void main(){
//   runApp(MyCustomWidget());
// }

void main(){
  runApp(MyApp());
}





class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "home",
      // home: WeekSixHome(),

      routes: {
        "home":(context)=> WeekSixHome(),
        'screenOne':(context)=> ScreenOne(),
      },
    );
  }
}





// void main() {
//   runApp(MaterialApp(
//       title: "6B SecondWeek",
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//           body: Container(
//             width: double.infinity,
//             height: double.infinity,
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                   colors: [Colors.green, Colors.grey, Colors.deepPurpleAccent],
//                   begin: Alignment.bottomCenter,
//                   end: Alignment.topLeft),
//             ),
//             child: MyCustomWidget(),
//           ))));
// }
// Text("i am child of centre"),
//
// Text(
// "I am Inside Container",
// style: TextStyle(
// color: Colors.pink, fontWeight: FontWeight.w900, fontSize: 30),
// )),

//
// ElevatedButton(
// onPressed: () {
// // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("Hello"),));
// }, child: Text("Press ME"))))),

// class MyCustomWidget extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return Text("Hey");
//   }
// }
