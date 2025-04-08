import 'package:flutter/material.dart';
import 'package:sixb_class_practice/Week6/screen_one.dart';

import 'listview_and_gridview.dart';
class WeekSixHome extends StatelessWidget {
   WeekSixHome({super.key});

  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Week Six "),
      ),
      body: Container(
        color: Colors.black38,
        child: Center(
          child: Column(
            children: [
              TextField(
                controller: _controller,
              ),

              GestureDetector(
                onTap: () {
                  //   Navigator.push(context,
                  //       MaterialPageRoute(builder:
                  //           (context)=> ScreenOne(name: "Hello 6A",
                  //             age: 13,myValue: _controller.text)));
                  //

                  // Navigator.pushNamed(context, "screenOne");

                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ListviewAndGridview()));
                },
                child: Container(
                    color: Colors.green,
                    height: 100,
                    width: 100,),
              ),
            ],
          ),
        ),
      ) 
    );
  }

}

// Container(
// color: Colors.brown,
// height: MediaQuery.of(context).size.height*0.5,
// width: MediaQuery.of(context).size.width*0.4,
// ),