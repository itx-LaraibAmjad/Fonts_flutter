import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(title: const Text('Material App Bar')),
        body: Dateandtimelab(),
      ),
    );
  }
}

class Dateandtimelab extends StatefulWidget {
  const Dateandtimelab({super.key});

  @override
  State<Dateandtimelab> createState() => _DateandtimelabState();
}

class _DateandtimelabState extends State<Dateandtimelab> {
  var time = DateTime.now();
  void timechange() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Text("Display the time : $time"),
        Text("Date Format: ${DateFormat("Hms").format(time)}"),
        //control pa press krny ky bad date format chly ga
        Text("Date Format: ${DateFormat("Hm").format(time)}"),
        Text("Date Format: ${DateFormat("yMd").format(time)}"),
//agr hum na ek sath do add krny ha TU hmy row ki form ma lagna prhy ga

        ElevatedButton(
          onPressed: () {
            timechange();
          },
          child: Text("Get Time"),
        ),
      ],
    );
  }
}
