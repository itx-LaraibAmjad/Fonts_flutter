import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(title: const Text('Material App Bar')),
        body: Gridview1(),
      ),
    );
  }
}

class Gridview1 extends StatefulWidget {
  const Gridview1({super.key});

  @override
  State<Gridview1> createState() => _Gridview1State();
}

class _Gridview1State extends State<Gridview1> {
  @override
  Widget build(BuildContext context) {
    // return GridView.count(crossAxisCount: 6,
    // crossAxisSpacing: 10,
    // mainAxisSpacing: 10,
    // children: [
    //   Container(color: Colors.teal,),
    //   Container(color: const Color.fromARGB(255, 103, 108, 108),),
    //   Container(color: const Color.fromARGB(255, 111, 168, 99),),
    //   Container(color: const Color.fromARGB(255, 120, 138, 198),),
    //   Container(color: const Color.fromARGB(255, 201, 103, 191),),
    //   Container(color: Colors.teal,),
    //   Container(color: const Color.fromARGB(255, 103, 108, 108),),
    //   Container(color: const Color.fromARGB(255, 111, 168, 99),),
    //   Container(color: const Color.fromARGB(255, 120, 138, 198),),
    //   Container(color: const Color.fromARGB(255, 201, 103, 191),),
    //   Container(color: Colors.teal,),
    //   Container(color: const Color.fromARGB(255, 103, 108, 108),),
    //   Container(color: const Color.fromARGB(255, 111, 168, 99),),
    //   Container(color: const Color.fromARGB(255, 120, 138, 198),),
    //   Container(color: const Color.fromARGB(255, 201, 103, 191),),
    // ],);

    // if we use wrap in this

    //  grid extent
    return GridView.extent(maxCrossAxisExtent: 300,
    children: [
      Container(color: Colors.teal,),
      Container(color: const Color.fromARGB(255, 103, 108, 108),),
      Container(color: const Color.fromARGB(255, 111, 168, 99),),
      Container(color: const Color.fromARGB(255, 120, 138, 198),),
      Container(color: const Color.fromARGB(255, 201, 103, 191),),
      Container(color: Colors.teal,),
      Container(color: const Color.fromARGB(255, 103, 108, 108),),
      Container(color: const Color.fromARGB(255, 111, 168, 99),),
      Container(color: const Color.fromARGB(255, 120, 138, 198),),
      Container(color: const Color.fromARGB(255, 201, 103, 191),),
    ],
    );
  }
}
