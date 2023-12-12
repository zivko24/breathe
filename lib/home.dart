import 'package:flutter/material.dart';
import 'package:breathe/utils/customTheme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.6, // Set the width to 50% of the screen width
          height: MediaQuery.of(context).size.width * 0.6, // Set the height to 50% of the screen width
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Palette.primaryColor, // Adjust the color as needed
          ),
          child: ElevatedButton(
            onPressed: () {
              // Function to start exercise
            },
            child: Text(
              'Start Exercise',
              style: TextStyle(fontSize: 44),
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
