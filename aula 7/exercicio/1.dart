import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('minhas receitas')),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16.0), // Adicione o espaçamento interno desejado
            color: Colors.blue, // Defina a cor de fundo do container
            child: Text(
              'Sem receitas ainda.',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
