import 'package:flutter/material.dart';
import 'package:flutter_app/components/navbar/TopNavbar.dart';

class Racing extends StatelessWidget {
  const Racing({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> racings = <String>[
      'Upcoming',
      'Past',
    ];
    return TopNavbar('Racing', racings);
  }
}
