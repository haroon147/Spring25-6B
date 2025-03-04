import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "6B SecondWeek",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Center(
        child: Container(
          // color: Colors.amber,
          // height: 300,
          // width: 400,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.green, Colors.grey, Colors.deepPurpleAccent],
                begin: Alignment.bottomCenter,
                end: Alignment.topLeft),
          ),
          child: Center(
            child: MyCustomWidget(),
          ),
        ),
      ))));
}
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

class MyCustomWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return Text("Hello I am Custom Widget");
  }
}
