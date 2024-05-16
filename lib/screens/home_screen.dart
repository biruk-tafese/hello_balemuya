import 'package:flutter/material.dart';
import 'package:hello_balemuya/home_page.dart';
import 'package:hello_balemuya/navigations/search_category.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<dynamic> _tabTexts = [
    const HomePage(), // Instantiate the HomePage widget directly here
    const SearchCategory(),
    'Favorites Page',
    'Settings Page',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    // Implement functionality for each tab's tap action here
    switch (index) {
      case 0:
        // Handle home tab tap
        break;
      case 1:
        // Handle search tab tap
        break;
      case 2:
        // Handle favorites tab tap
        break;
      case 3:
        // Handle settings tab tap
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello balemuya'),
      ),
      body: Center(
        child: _tabTexts[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: const Color.fromARGB(255, 39, 0, 108),
        selectedItemColor: Colors.blue, // Change the color of the selected item
        unselectedItemColor:
            Colors.grey, // Change the color of unselected items
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
