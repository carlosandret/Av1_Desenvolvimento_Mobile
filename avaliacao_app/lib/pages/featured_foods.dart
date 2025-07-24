import 'package:avaliacao_app/_constante/app_colors.dart';
import 'package:flutter/material.dart';

class FeaturedFoods extends StatefulWidget {
  const FeaturedFoods({super.key});

  @override
  State<FeaturedFoods> createState() => _FeaturedFoodsState();
}

class _FeaturedFoodsState extends State<FeaturedFoods> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.backgroundColorPage,
      body: Center(
        child: Text(
          'Featured Foods',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}