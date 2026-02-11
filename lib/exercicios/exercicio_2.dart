import 'package:flutter/material.dart';

class ExercicioBottomNav extends StatefulWidget {
  const ExercicioBottomNav({super.key});

  @override
  State<ExercicioBottomNav> createState() => _ExercicioBottomNavState();
}

class _ExercicioBottomNavState extends State<ExercicioBottomNav> {
  int _indiceSelecionado = 0;

  static const List<Widget> _telas = <Widget>[
    Text('Início', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
    Text(
      'Configurações',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    ),
    Text('Perfil', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
  ];

  void _aoTocarNaAba(int index) {
    setState(() {
      _indiceSelecionado = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App com BottomNavigationBar'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(child: _telas.elementAt(_indiceSelecionado)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          // Três itens de navegação [cite: 18]
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Início'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Configurações',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        ],
        currentIndex: _indiceSelecionado,
        selectedItemColor: Colors.blue,
        onTap: _aoTocarNaAba,
      ),
    );
  }
}
