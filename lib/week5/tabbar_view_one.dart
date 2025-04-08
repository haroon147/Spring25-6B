import 'package:flutter/material.dart';

class TabBarViewOne extends StatefulWidget {
   const TabBarViewOne({super.key});

  @override
  State<TabBarViewOne> createState() => _TabBarViewOneState();
}

class _TabBarViewOneState extends State<TabBarViewOne> {
  String myValue = "hi";

  final TextEditingController _emailController = TextEditingController();

   final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Text(
                myValue.toString(),
                style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                validator: (value){
                  if(value==""){
                    return "Enter Something.....";
                  }
                  return null;
                },
                onChanged: (ibrahim){
                  myValue = ibrahim;
                  setState(() {

                  });
                },
                controller: _emailController,
                decoration: const InputDecoration(
                    hintText: "Email",
                    labelText: "Email",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 5, color: Colors.black))),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                validator: (val){
                  if(val!.length <= 6){
                    return "Password must be 6 digits";
                  }
                  return null;
                },
                obscureText: true,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  hintText: "Password",
                  labelText: "Password",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 5, color: Colors.black)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(onPressed: () {
                myValue = _emailController.text;
                setState(() {
                  _formKey.currentState?.validate();
                });
              }, child: const Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }
}
