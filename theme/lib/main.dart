import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
         textTheme: TextTheme(
          displayLarge: TextStyle(color: Colors.pink,fontSize: 30),
          displayMedium: TextStyle(color: Colors.purple,fontSize: 25),
         )
      ),
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Themeclass(),
      ),
    );
  }
}
class Themeclass extends StatefulWidget {
  const Themeclass({super.key});

  @override
  State<Themeclass> createState() => _ThemeclassState();
}

class _ThemeclassState extends State<Themeclass> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("The University of Lahore",style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.blueGrey)),
        SizedBox(height: 15,),
        Text("The University of Lahore",style: Theme.of(context).textTheme.displayMedium),
        SizedBox(height: 15,),
        Text("The University of Lahore",style: Theme.of(context).textTheme.displayLarge),
        SizedBox(height: 15,),
        Text("The University of Lahore",style: Theme.of(context).textTheme.displayLarge),
      ],
    );
  }
}



