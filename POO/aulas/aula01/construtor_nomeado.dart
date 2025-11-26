import 'dart:io';

class Produto {
  String nome;
  double preco;

  Produto(this.nome, this.preco);

  Produto.gratuio(this.nome) : preco = 0.0;

  Produto.oferta() : nome = 'Playstation 5 Pro', preco = 1000;

  void exibir() {
    print("Nome: $nome");
    print("Preço: R\$ $preco");
  }
}

void main() {
  stdout.write("Digite o nome do produto: ");
  String nome = stdin.readLineSync() ?? 'Desconhecido';

  stdout.write("Digite o preço do produto: ");
  double preco = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  Produto p1 = Produto(nome, preco);

  Produto p2 = Produto.gratuio('Amostra grátis');

  Produto p3 = Produto.oferta();

  print('\nProduto criado manualmente: ');
  p1.exibir();

  print('\nProduto gratuito: ');
  p2.exibir();

  print('\nProduto em Oferta: ');
  p3.exibir();

}