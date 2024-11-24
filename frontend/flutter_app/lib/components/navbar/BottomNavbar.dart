import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/Guide.dart';
import 'package:flutter_app/pages/News.dart';
import 'package:flutter_app/pages/Racing.dart';
import 'package:flutter_app/pages/Standings.dart';
import 'package:flutter_app/pages/Videos.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const News(),
    const Videos(),
    const Racing(),
    const Standings(),
    const Guide(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // Display the selected page
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.react,
        backgroundColor: const Color.fromARGB(255, 255, 0, 0),
        items: const [
          TabItem(icon: Icons.newspaper, title: 'News'),
          TabItem(icon: Icons.videocam, title: 'Videos'),
          TabItem(icon: Icons.flag, title: 'Racing'),
          TabItem(icon: Icons.person, title: 'Standings'),
          TabItem(icon: Icons.view_list, title: 'Guide'),
        ],
        initialActiveIndex: _selectedIndex,
        onTap: _onItemTapped, // Update the selected tab
      ),
    );
  }
}
