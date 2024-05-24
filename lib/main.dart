import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());

  print("Hola");
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      // theme: ThemeData(primaryColor: Colors.amber),
      // darkTheme: ThemeData(primaryColor: Colors.amberAccent),
      debugShowCheckedModeBanner: false,
      home:HomeActivity()
    );
  }

}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});
  @override
  Widget build(BuildContext context) {

    int _selectedIndex = 0;
    return Scaffold(
      appBar: AppBar(
        title: Text("AUST Programming Contest Tracker",
            style: TextStyle(fontFamily: 'Consolas')
        ),
        centerTitle: true,
        toolbarHeight: 110,
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        elevation: 100,
      ),

      body: Text(''),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.add_alarm), label: "ICPC"),
          BottomNavigationBarItem(icon: Icon(Icons.add_alarm), label: "IUPC"),
          BottomNavigationBarItem(icon: Icon(Icons.add_alarm), label: "NCPC")
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          _selectedIndex = index;
        },
      ),


    );
  }
}
