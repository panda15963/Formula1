// lib/pages/Guide.dart
import 'package:flutter/material.dart';
import 'package:flutter_app/components/navbar/TopNavbar.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> news = <String>[];
    return TopNavbar('News', news); // Use the TopNavbar component directly
  }
}
