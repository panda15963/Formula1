import 'package:flutter/material.dart';
import 'package:flutter_app/components/navbar/TopNavbar.dart';

class Videos extends StatelessWidget {
  const Videos({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> videos = <String>[];
    return TopNavbar('Videos', videos); // Use the TopNavbar component directly
  }
}
