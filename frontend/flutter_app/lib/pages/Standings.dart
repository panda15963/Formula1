import 'package:flutter/material.dart';
import 'package:flutter_app/components/navbar/TopNavbar.dart';

class Standings extends StatelessWidget {
  const Standings({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> standings = <String>[
      'Drivers',
      'Constructors',
      'Race Results',
    ];
    return TopNavbar('Standings', standings);
  }
}
