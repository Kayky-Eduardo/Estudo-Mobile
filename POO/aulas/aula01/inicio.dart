// define a classe
class Pessoa {
  // Declaração dos atributos
  final String nome;

  final int idade;

  Pessoa({
    // Parâmetro obrigatório, garente inicialização segura
    required this.nome,
    required this.idade,
  });

  void exibirDados() {
    print('-' * 70);
    print("Nome: $nome");
    print("Idade: $idade");
    print('-' * 70);
  }
}

class Animal {
  // definição da classe animal
  String nome;
  int idade;
  double peso;
  String raca;

  // construtor da clase na forma curta
  Animal(this.nome, this.idade, this.peso, this.raca);

  // Método para exibir informações do animal
  void exibirInformacoes() {
    print('-' * 70);
    print("Nome: $nome");
    print("Idade: $idade");
    print("Peso: $peso");
    print("Raça: $raca");
    print('-' * 70);
  }

  int calcularIdadeEmMeses() {
    return idade * 12;
  }
}

void main() {
  Animal animal = Animal("Rex", 3, 180.4, "Labrador");

  animal.exibirInformacoes();

  int idadeMeses = animal.calcularIdadeEmMeses();
  print("Idade em meses: $idadeMeses");
  print('-' * 70);

  // Criação de uma instancia(objeto) da classe pessoa com o construtor
  Pessoa pessoa1 = Pessoa(nome: "nome", idade: 25);
  pessoa1.exibirDados();

  Pessoa pessoa2 = Pessoa(nome: "nome2", idade: 27);
  pessoa2.exibirDados();
}