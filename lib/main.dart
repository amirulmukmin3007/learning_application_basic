import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic Widgets Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        // Status Bar and App Bar area
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text('Home'),
          actions: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 10, 0),
              child: Image.asset('assets/ke_logo.png', width: 30),
            ),
          ],
        ),

        // Main content area - Safe Area
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Kotak "Welcome, User!"
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: double.infinity,
                  height: 100,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Welcome, User!',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(Icons.account_circle),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 20),

                // Kotak "Task List"
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: double.infinity,
                  height: 500,
                  child: DefaultTabController(
                    length: 2,
                    child: Column(
                      children: [
                        TabBar(
                          labelColor: Colors.yellow,
                          unselectedLabelColor: Colors.white,
                          indicatorColor: Colors.yellow,
                          indicatorSize: TabBarIndicatorSize.tab,
                          tabs: [
                            Tab(text: 'To Do'),
                            Tab(text: 'Missed'),
                          ],
                        ),

                        Expanded(
                          child: TabBarView(
                            children: [
                              ListView(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      color: Colors.yellow,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: ListTile(
                                      title: Text(
                                        'Kedai Makan ABC',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                      subtitle: Text('20/5/2025'),
                                      trailing: Text(
                                        'RM 20.00',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      color: Colors.yellow,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: ListTile(
                                      title: Text(
                                        'Kedai Makan ABC',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                      subtitle: Text('20/5/2025'),
                                      trailing: Text(
                                        'RM 20.00',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              ListView(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      color: Colors.yellow,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: ListTile(
                                      title: Text(
                                        'Kedai Makan ABC',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                      subtitle: Text('20/5/2025'),
                                      trailing: Text(
                                        'RM 20.00',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      color: Colors.yellow,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: ListTile(
                                      title: Text(
                                        'Kedai Makan ABC',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                      subtitle: Text('20/5/2025'),
                                      trailing: Text(
                                        'RM 20.00',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        // Navigation Bar
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
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
