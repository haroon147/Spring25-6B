import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  // String name;
  // int age;
  // String myValue;
  // ScreenOne({super.key,required this.name, required this.age, required this.myValue});
ScreenOne({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Screen-1"),),
      body: Container(
        color: Colors.orange,
        child: Center(
          child: Column(
            children: [
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text("Back"),),
              // Text(name.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 34),),
              // Text(age.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 34),),
              // Text(myValue.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 34),),


            ],
          ),
        ),
      ),
    );
  }
}
