import 'package:avaliacao_app/_constante/app_colors.dart';
import 'package:flutter/material.dart';

class Cafes extends StatefulWidget {
  const Cafes({super.key});

  @override
  State<Cafes> createState() => _CafesState();
}

class _CafesState extends State<Cafes> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.backgroundColorPage,
      body: Center(
        child: Text(
          'Cafes',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}