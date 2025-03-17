import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        appBar: AppBar(title: const Text("HomePage"),),
        body: ListView(
          children: const [
            ListTile(
              title: Text("Osama"),
              subtitle: Text("New Message"),
              leading: CircleAvatar(),
              trailing: Text("3"),
            ),
            ListTile(
              title: Text("Osama"),
              subtitle: Text("New Message"),
              leading: CircleAvatar(),
              trailing: Text("3"),
            ),
            ListTile(
              title: Text("Osama"),
              subtitle: Text("New Message"),
              leading: CircleAvatar(),
              trailing: Text("3"),
            ),
          ],
        ),
      ),
    );
  }
}
