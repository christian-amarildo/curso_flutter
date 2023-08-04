// Importação do pacote de widgets do Flutter.
import 'package:flutter/material.dart';

// Função principal do aplicativo Flutter.
void main() {
  // Inicia a aplicação Flutter chamando a classe MaterialApp como o widget raiz.
  runApp(
    const MaterialApp(
      // Define a tela inicial do aplicativo como a classe Tela.
      home: Tela(),
    ),
  );
}

// Classe Tela que representa a tela inicial do aplicativo.
class Tela extends StatefulWidget {
  // Construtor da classe, mas não é utilizado aqui. O construtor é definido como constante.
  const Tela({Key? key});

  // Método createState que cria o estado da classe Tela e retorna uma instância do _TelaState.
  @override
  State<Tela> createState() => _TelaState();
}

// Classe _TelaState que representa o estado da tela.
class _TelaState extends State<Tela> {
  // Variável que armazena a string de busca digitada pelo usuário.
  String busca = '';

  @override
  Widget build(BuildContext context) {
    // Lista de categorias e nomes de pratos.
    List<String> categorias = [
      'Sobremesas',
      'Pratos principais',
      'Aperitivos',
    ];
    List<String> nomesPratos = [
      'Prato A',
      'Prato B',
      'Prato C',
    ];

    // Filtra os nomes de pratos com base na busca do usuário.
    nomesPratos = nomesPratos.where((nomePrato) => nomePrato.contains(busca)).toList();

    // Retorna o widget Scaffold, que é uma estrutura básica para a tela com AppBar e outras opções.
    return Scaffold(
      // Corpo do Scaffold contendo uma coluna de widgets.
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Widget Padding com TextFormField para entrada de texto de busca.
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              initialValue: busca, // Define o valor inicial do campo de busca.
              onChanged: (valor) {
                // Função chamada sempre que o texto do campo de busca é alterado.
                // Atualiza o estado com o novo valor de busca digitado pelo usuário.
                setState(() {
                  busca = valor;
                });
              },
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.search), // Ícone de pesquisa à esquerda do campo de texto.
                hintText: 'Buscar prato', // Texto de dica exibido dentro do campo de texto.
                border: OutlineInputBorder(), // Borda ao redor do campo de texto.
              ),
            ),
          ),

          // Loop for para construir seções de pratos de acordo com as categorias.
          for (String categoria in categorias)
            Padding(
              padding: const EdgeInsets.all(10),
              child: Secao(
                titulo: categoria,
                nomesPratos: nomesPratos,
              ),
            ),
        ],
      ),
    );
  }
}

// Classe Secao que representa uma seção de pratos.
class Secao extends StatelessWidget {
  // Atributos da classe Secao.
  final String titulo;
  final List<String> nomesPratos;

  // Construtor da classe Secao.
  const Secao({
    Key? key,
    required this.titulo,
    required this.nomesPratos,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Retorna um widget Column que exibe o título da seção e os cards dos pratos.
    return Column(
      children: [
        // Widget Text para exibir o título da seção.
        Center(
          child: Text(
            titulo,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 10), // Espaçamento entre o título e os cards dos pratos.
        // Widget Row para exibir os cards dos pratos em uma linha horizontal.
        Row(
          children: [
            // Loop for para construir os cards dos pratos.
            for (String nomePrato in nomesPratos)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: CardPrato(
                  nome: nomePrato,
                  icone: const Icon(Icons.restaurant),
                ),
              ),
          ],
        ),
      ],
    );
  }
}

// Classe CardPrato que representa um card de prato.
class CardPrato extends StatelessWidget {
  // Atributos da classe CardPrato.
  final String nome;
  final Icon icone;

  // Construtor da classe CardPrato.
  const CardPrato({
    Key? key,
    required this.nome,
    required this.icone,
  }) : super(key: key);

  @override
