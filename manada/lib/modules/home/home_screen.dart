import 'package:flutter/material.dart';

import '../challenges/challenge_screen.dart';
import '../profile/profile_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  // Lista de widgets para cada página
  static final List<Widget> _pages = <Widget>[
    Center(child: ChallengesPage()),  
    Center(child: Text('Busca', style: TextStyle(fontSize: 24))),
    Center(child: UserProfile()),
  ];

  // Função para alterar o índice da página selecionada
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: _pages[_selectedIndex], // Exibe a página correspondente ao índice selecionado
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.center_focus_strong_sharp),
            label: 'Desafios',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Ranking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 245, 130, 22), // Cor do item selecionado
        onTap: _onItemTapped, // Chama a função para alterar a página ao tocar em um item
      ),
    );
  }
}
