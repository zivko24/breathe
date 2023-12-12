import 'package:flutter/material.dart';
import 'package:breathe/utils/customTheme.dart';
import 'package:breathe/app_bar.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppBar(title: 'Profile'),
      body: Center(
        child: Text('Hi'),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          // Handle navigation to other pages if needed
        },
        indicatorColor: Palette.navigationBackgroundColor,
        selectedIndex: 2, // Set the appropriate index for the "Profile" page
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.book),
            label: 'My Statistics',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        backgroundColor: Palette.navigationBackgroundColor,
      ),
    );
  }
}
