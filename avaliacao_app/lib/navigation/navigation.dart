import 'package:avaliacao_app/home/home_page.dart';
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
        backgroundColor: Colors.amber,
        onTap: (value) => setState(() {
          _itemSelecionado = value;
        }),
        currentIndex: _itemSelecionado,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: Icon(Icons.home),
            label: 'Home'
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Discovery'
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
          ),
        ],
      ),

      body: [
        Center(child: Text('Home')),
        MyHomePage(),
        Center(child: Text('Top food')),
        
      ][_itemSelecionado],
    );
  }
}