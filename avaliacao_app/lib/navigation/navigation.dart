import 'package:avaliacao_app/_constante/app_colors.dart';
import 'package:avaliacao_app/home/discovery.dart';
import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _itemSelecionado = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        
        fixedColor: AppColors.backgroundColorIcone,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black,
        onTap: (value) => setState(() {
          _itemSelecionado = value;
        }),
        currentIndex: _itemSelecionado,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Discovery',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Bookmark',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.leaderboard),
            label: 'Top foods',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),

      body: [
        Center(child: Text('Home')),
        MyHomePage(),
        Center(child: Text('Bookmark')),
        Center(child: Text('Top food')),
        Center(child: Text('Profile')),
      ][_itemSelecionado],
    );
  }
}
