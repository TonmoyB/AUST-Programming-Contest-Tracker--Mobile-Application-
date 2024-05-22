import 'dart:io';
import 'dart:ui';

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

    return Scaffold(
      appBar: AppBar(title: Text("AUSTPC Tracker",style: TextStyle(fontFamily: 'Georgia')),
        centerTitle: true,
        toolbarHeight: 110,
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        elevation: 100,
      ),

      body: Text(''),

      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.black),
                  accountName: Text("AUST\nProgramming Contest Tracker"),
                  accountEmail: null,
                  currentAccountPicture: null,
                )
            ),
            const ListTile(
                leading: Icon(Icons.access_alarm),
                title: Text("ICPC")
            ),
            const ListTile(
                leading: Icon(Icons.access_alarm),
                title: Text("IUPC")
            ),
            const ListTile(
                leading: Icon(Icons.access_alarm),
                title: Text("NCPC")
            )
          ]
        ),
      ), //Left
      // endDrawer: , //Right

    );
  }
}
