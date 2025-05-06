import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          displayLarge: TextStyle(
            fontFamily: "Schyler",
            fontSize: 30,
            fontWeight: FontWeight.w500,
            color: Colors.teal,
          ),
          displayMedium: TextStyle(
            fontFamily: "Schyler",
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.teal,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(appBar: AppBar(title: const Text('')), body: Practice1()),
    );
  }
}

class Practice1 extends StatefulWidget {
  const Practice1({super.key});

  @override
  State<Practice1> createState() => _Practice1State();
}

class _Practice1State extends State<Practice1> {
  String countryTime = " ";
  bool _showBox = false; // Flag to control visibility of the time box

  void getJapanTime() {
    DateTime utcTime = DateTime.now().toUtc();
    DateTime japanTime = utcTime.add(Duration(hours: 9));
    String formattedTime = DateFormat(
      'dd MMMM yyyy, hh:mm:s a',
    ).format(japanTime);
    setState(() {
      countryTime = "Time in Japan: $formattedTime";
      _showBox = true; // Show the box when the button is pressed
    });
  }

  void getPakistanTime() {
    DateTime pakistanTime = DateTime.now();
    String formattedTime = DateFormat(
      'dd MMMM yyyy, hh:mm:s a',
    ).format(pakistanTime);
    setState(() {
      countryTime = "Time in Pakistan: $formattedTime";
      _showBox = true;
    });
  }

  void getEgyptTime() {
    DateTime utcTime = DateTime.now().toUtc();
    DateTime egyptTime = utcTime.add(Duration(hours: 2));
    String formattedTime = DateFormat(
      'dd MMMM yyyy, hh:mm:s a',
    ).format(egyptTime);
    setState(() {
      countryTime = "Time in Egypt: $formattedTime";
      _showBox = true;
    });
  }

  void getCanadaTime() {
    DateTime utcTime = DateTime.now().toUtc();
    DateTime canadaTime = utcTime.subtract(Duration(hours: 5));
    String formattedTime = DateFormat(
      'dd MMMM yyyy, hh:mm:s a',
    ).format(canadaTime);
    setState(() {
      countryTime = "Time in Canada: $formattedTime";
      _showBox = true;
    });
  }

  void getAustarliaTime() {
    DateTime utcTime = DateTime.now().toUtc();
    DateTime austarliaTime = utcTime.add(Duration(hours: 10));
    String formattedTime = DateFormat(
      'dd MMMM yyyy, hh:mm:s a',
    ).format(austarliaTime);
    setState(() {
      countryTime = "Time in Austarlia: $formattedTime";
      _showBox = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            width: 700,
            child: Column(
              children: [
                Center(
                  child: Text(
                    "Five Countries Time and Date Format",
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        getPakistanTime();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(
                          255,
                          24,
                          189,
                          195,
                        ),
                        foregroundColor: Colors.white,
                        minimumSize: Size(100, 60),
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        "Pakistan",
                        style: TextStyle(
                          fontFamily: "Trajan Pro",
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        getJapanTime(); // Call function to get Japan time
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(
                          255,
                          24,
                          189,
                          195,
                        ),
                        foregroundColor: Colors.white,
                        minimumSize: Size(100, 60),
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        "Japan",
                        style: TextStyle(
                          fontFamily: "Trajan Pro",
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        getEgyptTime();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(
                          255,
                          24,
                          189,
                          195,
                        ),
                        foregroundColor: Colors.white,
                        minimumSize: Size(100, 60),
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        "Egypt",
                        style: TextStyle(
                          fontFamily: "Trajan Pro",
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        getCanadaTime();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(
                          255,
                          24,
                          189,
                          195,
                        ),
                        foregroundColor: Colors.white,
                        minimumSize: Size(100, 60),
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        "Canada",
                        style: TextStyle(
                          fontFamily: "Trajan Pro",
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        getAustarliaTime();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(
                          255,
                          24,
                          189,
                          195,
                        ),
                        foregroundColor: Colors.white,
                        minimumSize: Size(100, 60),
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        "Australia",
                        style: TextStyle(
                          fontFamily: "Trajan Pro",
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Text(
                  "Click on the country whose time you want to see.",
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                SizedBox(height: 30),
                if (_showBox) // Show the container only when _showBox is true
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 115, 144, 159),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      countryTime,
                      style: TextStyle(
                        fontFamily: 'Schyler',
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
