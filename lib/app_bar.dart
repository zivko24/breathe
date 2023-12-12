import 'package:flutter/material.dart';
import 'package:breathe/utils/customTheme.dart';
import 'package:breathe/profile.dart';

class TopAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const TopAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Text(title),
          SizedBox(width: 16), // Adjust the spacing between title and button
          IconButton(
            icon: Icon(Icons.message), // Change the icon as needed
            onPressed: () {
              // Navigate to a new page when the button is pressed
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
          ),
        ],
      ),
      backgroundColor: Palette.primaryColor,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
