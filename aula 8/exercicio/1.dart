import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final Map<String, List<String>> dados = {
    'Sobremesas': [
      'Torta de Maça',
      'Mousse de Chocolate',
      'Pudim de leite condensado',
    ],
    'Pratos principais': [
      'Frango Assado com Batatas',
      'Espaguete à Bolonhesa',
      'Risoto de Cogumelos',
    ],
    'Aperitivos': [
      'Bolinhos de Queijo',
      'Bruschetta de Tomate e Manjericão',
      'Canapés de Salmão com Cream Cheese',
    ],
  };

  String? categoriaUsuario;
  String busca = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Receitas'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    busca = value;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Buscar pratos',
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: dados.length,
                itemBuilder: (context, index) {
                  String categoria = dados.keys.elementAt(index);
                  List<String> receitas = dados.values.elementAt(index);

                  return _buildCategory(categoria, receitas);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategory(String categoria, List<String> receitas) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            categoria,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          ...receitas
              .where((receita) =>
                  receita.toLowerCase().contains(busca.toLowerCase()) ||
                  busca.isEmpty)
              .map((receita) => Text(receita, style: TextStyle(fontSize: 18)))
              .toList(),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
