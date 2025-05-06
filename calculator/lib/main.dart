import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(title: const Text('Material App Bar')),
        body: Calculator1(),
      ),
    );
  }
}

class Calculator1 extends StatefulWidget {
  const Calculator1({super.key});

  @override
  State<Calculator1> createState() => _Calculator1State();
}

class _Calculator1State extends State<Calculator1> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            width: 370,
            decoration: BoxDecoration(
              border: Border.all(color: const Color.fromARGB(255, 254, 254, 254), width: 2), 
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
              BoxShadow(
               color: Colors.black26, // Shadow color
                blurRadius: 4,         // Blur effect
                 offset: Offset(2, 4),  // Shadow position
              ),
             ], // Rounded corners
            ),
            child: Column(
              children: [
                Container(
                 width: 350,
                 decoration: BoxDecoration(
                 color: Colors.black,
              borderRadius: BorderRadius.circular(12),
            ),
                height: 530,
                child: Column(
                children: [

              ],
            ),
          )
              ],
            ),
          )
        ],
      ));
  }
}
