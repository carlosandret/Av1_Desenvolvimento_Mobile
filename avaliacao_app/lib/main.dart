import 'package:avaliacao_app/home/discovery.dart';
import 'package:avaliacao_app/navigation/navigation.dart';
import 'package:avaliacao_app/pages/bar_hotels.dart';
import 'package:avaliacao_app/pages/cafes.dart';
import 'package:avaliacao_app/pages/fast_foods.dart';
import 'package:avaliacao_app/pages/featured_foods.dart';
import 'package:avaliacao_app/pages/fine_dining.dart';
import 'package:avaliacao_app/pages/nearby_map.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        '/home': (context) => MyHomePage(),
        '/bar_hotel': (context) => BarHotels(),
        '/cafes': (context) => Cafes(),
        '/nearby_map': (context) => NearbyMap(),
        '/fast_foods': (context) => FastFoods(),
        '/featured_foods': (context) => FeaturedFoods(),
        '/fine_dining': (context) => FineDining()
      },

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 219, 18, 159),
        ),
      ),
      themeMode: ThemeMode.light,
      home: const Navigation(),
    );
  }
}