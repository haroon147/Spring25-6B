import 'package:flutter/material.dart';

class MyCustomWidget extends StatefulWidget {
  const MyCustomWidget({super.key});

  @override
  State<MyCustomWidget> createState() => _MyCustomWidgetState();
}

class _MyCustomWidgetState extends State<MyCustomWidget> {
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            num++;
            setState(() {});
          },
          child: Icon(Icons.add),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.green,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.black26,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
                Text(
                  "My Custom Text",
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.w900),
                ),
                Text(
                  "$num",
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 30,
                ),              Container(
                  margin: EdgeInsets.only(top: 50,left: 30,),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.pink,width: 4),
                  ),
                  child: Image(
                                  image: AssetImage(
                  "assets/images/img1.PNG",
                                  ),
                                ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
