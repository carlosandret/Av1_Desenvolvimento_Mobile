import 'package:avaliacao_app/_constante/app_colors.dart';
import 'package:flutter/material.dart';

class BarHotels extends StatefulWidget {
  const BarHotels({super.key});

  @override
  State<BarHotels> createState() => _BarHotelsState();
}

class _BarHotelsState extends State<BarHotels> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.backgroundColorPage,
      body: Center(
        child: Text(
          'Bars & Hotels',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}