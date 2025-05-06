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
        appBar: AppBar(title: const Text('By Using Grid Builder')),
        body: Gridbuilder1(),
      ),
    );
  }
}

class Gridbuilder1 extends StatefulWidget {
  const Gridbuilder1({super.key});

  @override
  State<Gridbuilder1> createState() => _Gridbuilder1State();
}

class _Gridbuilder1State extends State<Gridbuilder1> {
  List<String> myimages = [
    "assets/image1.jpg",
    "assets/image2.jpg",
    "assets/image4.jpg",
    "assets/imge3.jpg",
    "assets/image4.jpg",
    "assets/image5.jpg",
    "assets/iamge6.jpg",
    "assets/image7.jpg",
    "assets/image8.jpg",
    "assets/image9.jpg",
    "assets/image10.jpg",
    "assets/image11.jpg",
    "assets/image12.jpg",
    "assets/image13.jpg",
    "assets/image14.jpg",
    "assets/image16.jpg",
    "assets/image17.jpg",
    "assets/image18.jpg",
    "assets/hijab.jpg",
    "assets/hijabpi.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 400,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: myimages.length*3,
      itemBuilder: (context, index) {
        return Image.asset(myimages[index % myimages.length],fit: BoxFit.cover,);
      },
    );
  }
}
