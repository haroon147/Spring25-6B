import 'package:flutter/material.dart';
import 'package:sixb_class_practice/week5/tabbar_view_one.dart';
import 'package:sixb_class_practice/week5/tabbar_view_two.dart';

class WeekFiveHome extends StatelessWidget {
  const WeekFiveHome({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black12,
          title: Text("6B Week Five"),
          centerTitle: true,
          bottom: TabBar(tabs: [
            Tab(text: "Tab1",icon:Icon(Icons.chat),),
            Tab(text: "Call",icon: Icon(Icons.add_call),),
            Tab(text: "Status",icon: Icon(Icons.work_history_rounded),),
          ]),
        ),
        body: TabBarView(children: [
          TabBarViewOne(),
          TabBarViewTwo(),
          Text("TAB3")
        ]),
      ),
    );
  }
}
