import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('BMI CALCULATOR'),
        ),
        body: Bmicalculator(),
      ),
    );
  }
}

class Bmicalculator extends StatefulWidget {
  const Bmicalculator({super.key});

  @override
  State<Bmicalculator> createState() => _BmicalculatorState();
}

class _BmicalculatorState extends State<Bmicalculator> {
  var height = TextEditingController();
  var weight = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
      children: [
        SizedBox(
          // height: 500,
          width: 450,
          child: Column(
            children: [
              Text("BMI",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.black),),
              Container(height: 10,),
              TextField(
              controller: height,
              decoration: InputDecoration(labelText: "Units"),
              ),
              Container(height: 10,),
            TextField(
            controller: height,
            decoration: InputDecoration(labelText: "Weight(kg)"),
             ),
             Container(height: 10,),
              TextField(
            controller: height,
            decoration: InputDecoration(labelText: "Height (inch/fit)"),
            ),
            Container(height: 10,),
            Text("Results",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black),),
            Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey),
                ),
              child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
             Text("BMI:",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.black), ),
             Text("24.5",style: TextStyle(fontSize: 20, color: Colors.deepPurple),
              ),
              ],
              ),
              ),
              Container(height: 20,),
              ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
              minimumSize:  Size(450, 70),
              backgroundColor: const Color.fromARGB(255, 141, 89, 230), // Background color
              foregroundColor: Colors.white, // Text (and icon) color
              elevation: 8, // Shadow
              shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(12), // Rounded corners
              ),
              ),
              child: Text("Reset")),
            ],
          ),
        ),
      ],
    ),
    );
  }
}