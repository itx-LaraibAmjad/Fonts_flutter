import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Awesomefont1(),
      ),
    );
  }
}
// search font awesome flutter
class Awesomefont1 extends StatefulWidget {
  const Awesomefont1({super.key});

  @override
  State<Awesomefont1> createState() => _Awesomefont1State();
}

class _Awesomefont1State extends State<Awesomefont1> {
  @override
  Widget build(BuildContext context) {
    return Center(child: const FaIcon(FontAwesomeIcons.amazon,color: Colors.brown,size: 40,));
  }
}