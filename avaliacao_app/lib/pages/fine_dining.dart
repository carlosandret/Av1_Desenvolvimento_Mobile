import 'package:avaliacao_app/_constante/app_colors.dart';
import 'package:flutter/material.dart';

class FineDining extends StatefulWidget {
  const FineDining({super.key});

  @override
  State<FineDining> createState() => _FineDiningState();
}

class _FineDiningState extends State<FineDining> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.backgroundColorPage,
      body: Center(
        child: Text(
          'Fine Dining',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}