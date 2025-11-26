import 'dart:io';

class Pessoa {
  // Atributo "nome" do tipo String
  // n pode ser nulo, sempre tera valor válido
  String nome;

  int idade;

  Pessoa({this.nome = 'Não informado', this.idade = 0});

  void lerDados() {
    stdout.write("Digite o nome: ");

    String? entradaNome = stdin.readLineSync();

    if (entradaNome != null && entradaNome.isNotEmpty) {
      nome = entradaNome;
    }

    stdout.write("Digite a idade: ");

    String? entradaIdade = stdin.readLineSync();

    int? idadeConvertida = int.tryParse(entradaIdade ?? '');
    if (idadeConvertida != null) {
      idade = idadeConvertida;
    }
  }
  void exibirDados() {
    print('-' * 70);
    print("Nome: $nome");
    print("Idade: $idade");
    print('-' * 70);
  }
}
void main() {
  var pessoa = Pessoa();
  pessoa.lerDados();
  pessoa.exibirDados();
}