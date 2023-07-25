void main() {
  // Declaração e atribuição de valores às variáveis do aluno
  String nome = "christian amarildo";
  int idade = 18;
  bool ehNovato = true;
  double peso = 78.5;
  List<double> notas = [10, 9.0, 7.5, 8.0];
  List<String> disciplinas = ["Coach profissional", "Matemática financeira", "Educação emocional", "Machine learning"];
  String? endereco; // O endereço ainda não está cadastrado

  // Exibindo as informações do aluno na tela
  print("Nome: $nome");
  print("Idade: $idade anos");
  print("Novato: ${ehNovato ? 'Sim' : 'Não'}");
  print("Peso: $peso kg");
  print("Notas: $notas");
  print("Disciplinas: $disciplinas");
  print("Endereço: ${endereco ?? 'Endereço não cadastrado'}");
}
