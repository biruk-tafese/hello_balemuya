import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationProvider>(
      builder: (context, navigationProvider, _) {
        return BottomNavigationBar(
          currentIndex: navigationProvider.currentIndex,
          onTap: (index) => navigationProvider.changeIndex(index),
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
          selectedItemColor:
              Colors.blue, // Change the color of the selected item
          unselectedItemColor:
              Colors.grey, // Change the color of unselected items
        );
      },
    );
  }
}

class NavigationProvider with ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void changeIndex(int index) {
    _currentIndex = index;
    notifyListeners();

    // Implement functionality for each tab's tap action here
    switch (index) {
      case 0:
        const Text('Home Page');
        break;
      case 1:
        const Text('Search Page');
        break;
      case 2:
        const Text('Favorites Page');
        break;
      case 3:
        const Text('Settings Page');
        break;
    }
  }
}
