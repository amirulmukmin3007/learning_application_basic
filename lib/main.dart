import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic Widgets Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      home: Scaffold(
        backgroundColor: Color(0xFFc0d4ff),
        // Status Bar and App Bar area
        appBar: AppBar(
          backgroundColor: Color(0xFF012169),
          title: Text('Home', style: TextStyle(color: Colors.white)),
          actions: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 10, 0),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Image.asset('assets/zen_logo.png', width: 30),
              ),
            ),
          ],
        ),

        // Main content area - Safe Area
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text "Welcome, User!"
                Text(
                  'Welcome,',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text('Muhammad Amirul Mukmin,', style: TextStyle(fontSize: 16)),

                SizedBox(height: 20),

                // Kotak "Task List"
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.access_time_rounded,
                                color: Colors.orange,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                'Ongoing',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Text(
                            '15',
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 150,
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.done, color: Colors.green),
                              const SizedBox(width: 5),
                              Text(
                                'Done',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Text(
                            '25',
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.warning_amber, color: Colors.red),
                              const SizedBox(width: 5),
                              Text(
                                'Due',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Text(
                            '3',
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 150,
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.lightbulb, color: Colors.purple),
                              const SizedBox(width: 5),
                              Text(
                                'Proposed',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Text(
                            '8',
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.purple,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

        // Navigation Bar
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Color(0xFF012169),
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.note), label: 'Form'),
          ],
        ),
      ),
    );
  }
}
