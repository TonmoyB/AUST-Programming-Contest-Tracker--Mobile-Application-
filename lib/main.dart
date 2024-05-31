import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeActivity(),
    );
  }
}

class HomeActivity extends StatefulWidget {
  const HomeActivity({super.key});

  @override
  _HomeActivityState createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {
  var IUPCList = [
    {
      "Title": "IUT 11th National ICT Fest Programming Contest 2024",
      "Event_Date": "27 April 2024",
      "Top_Team_Rank": "14"
    },
    {
      "Title": "SUST CSE Carnival 2024 IUPC",
      "Event_Date": "18 February 2024",
      "Top_Team_Rank": "16"
    },
    {
      "Title": "UAP Inter University Collaborative Programming Contest 1.0 (Senior)",
      "Event_Date": "27 April 2024",
      "Top_Team_Rank": "01"
    }
  ];
  var ICPCList = [
    {
      "Title": "IUT 11th National ICT Fest Programming Contest 2024",
      "Event_Date": "27 April 2024",
      "Top_Team_Rank": "14"
    },
    {
      "Title": "SUST CSE Carnival 2024 IUPC",
      "Event_Date": "18 February 2024",
      "Top_Team_Rank": "16"
    },
  ];
  var NCPCList = [
    {
      "Title": "SUST CSE Carnival 2024 IUPC",
      "Event_Date": "18 February 2024",
      "Top_Team_Rank": "16"
    }
  ];
  var tempList = [];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if(_selectedIndex==0)
    {
      tempList = IUPCList;
    }
    else if(_selectedIndex==1){
      tempList = ICPCList;
    }
    else{
      tempList = NCPCList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            'AUST Programming Contest Tracker',
            style: TextStyle(fontSize: 20),
          ),
        ),
        centerTitle: true,
        toolbarHeight: 100,
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        elevation: 100,
      ),

      body: ListView.builder(
        itemCount: tempList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.green),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tempList[index]["Title"]!,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Event Date: ${tempList[index]["Event_Date"]!}",
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Top Team Rank: ${tempList[index]["Top_Team_Rank"]!}",
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 5),
                ],
              ),
            ),
          );
        },
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.add_alarm), label: "IUPC"),
          BottomNavigationBarItem(icon: Icon(Icons.add_alarm), label: "ICPC"),
          BottomNavigationBarItem(icon: Icon(Icons.add_alarm), label: "NCPC"),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),

    );
  }
}
