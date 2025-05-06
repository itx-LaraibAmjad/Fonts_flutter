// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(title: const Text('LOG IN PAGE ')),
        body: Loginpage1(),
      ),
    );
  }
}
class Loginpage1 extends StatefulWidget {
  const Loginpage1({super.key});

  @override
  State<Loginpage1> createState() => _Loginpage1State();
}

class _Loginpage1State extends State<Loginpage1> {
  var tf1 = TextEditingController();
   var tf2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            height: 500,
            width: 400,
            // color: const Color.fromARGB(255, 255, 255, 255),
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      "LOG IN PAGE",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(height: 70),
                SizedBox(width: 200, child: Image.asset("download.png")),
                Container(height: 20),
                TextField(
                  controller: tf1,
                  decoration: InputDecoration(
                    labelText: "Email",
                    enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: const Color.fromARGB(255, 161, 207, 244), width: 2),
                   ),),
                  ),
                   Container(height: 20),
                  TextField(
                  controller: tf2,
                  decoration: InputDecoration(
                    labelText: "Password",
                    enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: const Color.fromARGB(255, 161, 207, 244), width: 2),
                   ),
                  ),
                  ),
                  Container(height: 20),
                  Text("Forgot Password",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.blue),),
                  Container(height: 20),
                  ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 60), // width: 200, height: 60
                  textStyle: TextStyle(fontSize: 20),
                  backgroundColor: Colors.blue // bigger text
                  ),
                  child: Text("Log In",style: TextStyle(color: Colors.white))
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
