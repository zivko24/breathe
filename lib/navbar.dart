import 'package:flutter/material.dart';
import 'package:breathe/app_bar.dart';
import 'package:breathe/home.dart';
import 'package:breathe/notifications.dart';
import 'package:breathe/settings.dart';
import 'package:breathe/utils/customTheme.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  static late Function(String) updateTitle;
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  static late BuildContext currentContext;

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    Navigation.updateTitle = (String title) {
      setState(() {
        currentPageIndex = 0; // Reset to Home when navigating between pages
        _pageTitle = title;
      });
    };
  }

  String _pageTitle = "Home";

  @override
  Widget build(BuildContext context) {
    Navigation.currentContext = context;
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: TopAppBar(title: "Breathe"),
      body: IndexedStack(
        index: currentPageIndex,
        children: [
          HomePage(),
          StatisticsPage(),
          SettingsPage(),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Palette.buttonClicked,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.book),
            icon: Icon(Icons.book),
            label: 'My Statistics',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.settings),
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
