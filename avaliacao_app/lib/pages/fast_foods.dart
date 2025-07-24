import 'package:avaliacao_app/_constante/app_colors.dart';
import 'package:flutter/material.dart';

class FastFoods extends StatefulWidget {
  const FastFoods({super.key});

  @override
  State<FastFoods> createState() => _FastFoodsState();
}

class _FastFoodsState extends State<FastFoods> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.backgroundColorPage,
      body: Center(
        child: Text(
          'Fast Foods',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}