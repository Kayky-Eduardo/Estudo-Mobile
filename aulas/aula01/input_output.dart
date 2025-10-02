import 'dart:io';

void main() {
  stdout.write("Entre com seu nome: ");
  // retorna string, pode ser null se o usuario não digiar nada, por isso usar String?
  String? nome = stdin.readLineSync();

  // null safety
  nome = (nome == null || nome.isEmpty) ? 'Não informado' : nome;

  stdout.write('Data de Nascimento: ');

  String? inputIdade = stdin.readLineSync();

  int? idade = (inputIdade != null && inputIdade.isNotEmpty)
      ? int.tryParse(inputIdade)
      : null;

  if (idade == null) {
    print('Idade inválida! Digite um número válido.');
    return;
  }

  // nome e idade serão não nulo neste ponto
  print('');
  print('Seu nome é $nome');
  print('Nascimento $idade');
}
