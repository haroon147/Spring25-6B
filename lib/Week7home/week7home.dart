import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'my_drawer.dart';

class Week7Home extends StatefulWidget {
  const Week7Home({super.key});

  @override
  State<Week7Home> createState() => _Week7HomeState();
}

TextEditingController _nameContoller = TextEditingController();
TextEditingController _ageContoller = TextEditingController();
TextEditingController _cgpaContoller = TextEditingController();


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
String name = "";
void getData()async{
  SharedPreferences sp= await SharedPreferences.getInstance();
 name = sp.get("key_Name").toString();

}

class _Week7HomeState extends State<Week7Home> {
  @override
  void initState() {
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("WEEK7"),
      centerTitle: true,
      backgroundColor: Colors.blue,
      // leading: Icon(Icons.add_alert),
        actions: [
          Icon(Icons.search),
          InkWell(
            onTap: (){
              _AlertDialog(context);
            },
              child: Icon(Icons.person)),
          Icon(Icons.add_a_photo),
        ],
      ),
      drawer: MyDrawer(),
      
      body: Column(
        children: [
          TextField(
            controller: _nameContoller,
          ),
          TextField(
            controller: _ageContoller,
          ),
          TextField(
            controller: _cgpaContoller,
          ),
          TextButton(onPressed: ()async{
            SharedPreferences sp = await SharedPreferences.getInstance();
            sp.setString("key_Name", _nameContoller.text);

            setState(() {
            });
            }, child: Text("SaveDATA"),),

          Text("Name : $name "),
          Text("Age: " ),
          Text("CGPA: ")
        ],
      ),
    );
  }
}
