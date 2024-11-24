// lib/pages/Guide.dart
import 'package:flutter/material.dart';
import 'package:flutter_app/components/navbar/TopNavbar.dart';

class Guide extends StatelessWidget {
  const Guide({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> guide = <String>[];
    return TopNavbar('Guide', guide); // Use the TopNavbar component directly
  }
}
