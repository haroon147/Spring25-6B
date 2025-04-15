import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}


void _AlertDialog(BuildContext context){
  showDialog(context: context, builder: (BuildContext context){
    return AlertDialog(
      title: Text("AlertDialog"),
      backgroundColor: Colors.orange,
      actions: [
        ElevatedButton(onPressed: (){}, child: Text("Sucess"),),
        ElevatedButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text("Failure"),),
      ],
      icon: Icon(Icons.add_alert),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Content"),
          TextField(),
          TextField(),
        ],
      ),
    );
  });
}
class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            // decoration: BoxDecoration(
            // ),
            padding: EdgeInsets.all(0),
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.all(0),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.pinkAccent,
                backgroundImage: AssetImage("assets/images/img1.PNG"),
              ),
              accountName: Text("MyName"),
              accountEmail: Text("Dummy@gmail.com"),
            ),
          ),
          ListTile(
            title: Text("Home"),
            leading: Icon(Icons.home),
            trailing: Icon(Icons.home),
          ),
          ListTile(
            title: Text("Home"),
            leading: Icon(Icons.home),
            trailing: Icon(Icons.home),
          ),
          ListTile(
            title: Text("Profile"),
            leading: Icon(Icons.home),
            trailing: Icon(Icons.home),
          ),
          ListTile(
            title: Text("Contact Us"),
            leading: Icon(Icons.home),
            trailing: Icon(Icons.home),
          ),
          GestureDetector(
            onTap: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Logout SucessFully")));
              Navigator.pop(context);
            },
            onDoubleTap: (){
              _AlertDialog(context);
            },
            child: ListTile(
              title: Text("Logout"),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.home),
            ),
          ),
        ],
      ),
    );
  }
}
