import 'package:flutter/material.dart';
import 'package:breathe/utils/customTheme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Implement a guide'),
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.7,
          height: MediaQuery.of(context).size.width * 0.7,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Palette.primaryColor,
          ),
          child: ElevatedButton(
            onPressed: () {
              // Handle button press, e.g., navigate to the exercise page
            },
            child: Text(
              'Start Exercise',
              style: TextStyle(fontSize: 36, color: Palette.textWhite),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Palette.primaryColor,
              elevation: 0,
            ),
          ),
        ),
      ),
    );
  }
}
