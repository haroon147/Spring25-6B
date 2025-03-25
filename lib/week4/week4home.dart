import 'package:flutter/material.dart';

class Week4Home extends StatefulWidget {
  const Week4Home({super.key});

  @override
  State<Week4Home> createState() => _Week4HomeState();
}

class _Week4HomeState extends State<Week4Home> {
  @override
  Widget build(BuildContext context) {
    var myStyle = const TextStyle(
        fontSize: 30, fontWeight: FontWeight.bold, color: Color(0xff5bd6fd));
    var myFavColor = const Color(0xFFA93E3E);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Week 4 MAD"),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("SignUp", style: myStyle),
              Text(
                "You want to Continue",
                style: myStyle,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                  enabled: true,
                  keyboardType: TextInputType.emailAddress,
                  // obscureText: true,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: myFavColor,
                          width: 5,
                        ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black38, width: 20),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 5, color: myFavColor),
                      ),
                      label: const Text("EMail"),
                      hintText: ("Enter Email...."),
                      suffixIcon: const Icon(Icons.email),
                      prefixIcon: InkWell(
                          onTap: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text("Dont touch meee")));
                          },
                          child: const Icon(Icons.email_outlined))),
                ),
              ),
              TextField(
                maxLines: 4,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 5, color: myFavColor))),
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onDoubleTap: (){
                  const AlertDialog(actions: [
                    Text("Hello"),
                  ],);
                },
                child: Container(
                  width: 100,
                  color: myFavColor,
                  height: 100,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
