import 'package:flutter/material.dart';

class BottomNavigation1 extends StatefulWidget {
  const BottomNavigation1({Key? key}) : super(key: key);

  @override
  State<BottomNavigation1> createState() => _BottomNavigation1State();
}

class _BottomNavigation1State extends State<BottomNavigation1> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page")),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 16,
        selectedItemColor: Colors.red,
        selectedIconTheme: const IconThemeData(color: Colors.red),
        unselectedIconTheme: const IconThemeData(color: Colors.black),
        type: BottomNavigationBarType.fixed,
        onTap: (index) => setState(() => _currentIndex = index),
        backgroundColor: Colors.blue,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.home_repair_service), label: "Service"),
          BottomNavigationBarItem(icon: Icon(Icons.location_on), label: "Location"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded), label: "Profile"),
        ],
      ),
      body: _switchOnIndex(),
    );
  }

  _switchOnIndex() {
    switch (_currentIndex) {
      case 0:
        {
          return const Home();
        }
      case 1:
        {
          return const Center(
            child: Text("Services"),
          );
        }
      case 2:
        {
          return const Center(
            child: Text("Location"),
          );
        }
      case 3:
        {
          return const Center(
            child: Text("Profile"),
          );
        }
    }
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Hello Im Stateless widget Home"),
    );
  }
}
