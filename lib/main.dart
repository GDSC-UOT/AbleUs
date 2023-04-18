import 'package:able_us/ServiceSelector.dart';
import 'package:flutter/material.dart';
import 'Page.dart';
import 'PageTitle.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _currentIndex = 0;
  NewPage MainPage = NewPage();
  var pages = <NewPage>[
    CommunityPage(),
    SuppliesPage(),
    CentersPage(),
    OpportunityPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          fit: StackFit.loose,
          children: [
            PageTitle(pages[_currentIndex].title),
            pages[_currentIndex]
          ],
        ),
        backgroundColor: const Color(0xffFFFFFC),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.group),
                label: '',
                backgroundColor: Color(0xff07264E),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.medication_liquid),
                label: '',
                backgroundColor: Color(0xff07264E),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.house),
                label: '',
                backgroundColor: Color(0xff07264E),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.computer),
                label: '',
                backgroundColor: Color(0xff07264E),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: '',
                backgroundColor: Color(0xff07264E),
              ),
            ],
            selectedItemColor: const Color(0xffFB943B),
            unselectedItemColor: const Color(0xffFFFFFC),
            iconSize: 50,
            onTap: (value) {
              setState(() {
                _currentIndex = value;
              });
            }),
      ),
    );
  }
}
