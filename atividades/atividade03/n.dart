//14. Encontrando o Item Mais Caro
//Dada uma lista de Maps, onde cada Map representa um
// item com as chaves "nome" (String) e "preco" (double),
// encontre e imprima o nome do item que possui o maior preço.

import 'dart:io';
void main () {
  List<String> lista_nome = [];
  List<double> lista_preco = [];
  while (true) {
    stdout.write("\n1. Adicionar produto\n2. Descobrir item com maior preço"
    "\n3. Ver listas\n4. Sair\nResposta: ");
    String? inputO = stdin.readLineSync();
    print("");
    int? opcao = (inputO != null && inputO.isNotEmpty) ? int.parse(inputO) : null;

    if (opcao == 1) {
      stdout.write("Digite o nome do produto: ");
      String? inputNome = stdin.readLineSync();
      String? nome = (inputNome != null && inputNome.trim().isNotEmpty)? inputNome : null;
      
      stdout.write("Digite o valor: ");
      String? inputPreco = stdin.readLineSync();
      double? preco = (inputPreco != null && inputPreco.isNotEmpty)? double.tryParse(inputPreco) : null;
            

      if (nome != null && (preco != null && preco >= 0)) {
        lista_nome.add(nome);
        lista_preco.add(preco);
      } else {
        print("Erro! Verifique suas respostas!");
      }
    } else if (opcao == 2) {
      if (lista_nome.length > 0) {
        double maior = lista_preco.reduce((a, b) => a > b ? a : b);
        int index = lista_preco.indexOf(maior);
        print("Produto: ${lista_nome[index]}\nValor: ${lista_preco[index]}");
      }  else {
        print("Elementos insuficientes na lista");
      }
    } else if (opcao == 3) {
      print("Valores na lista:\n");
        for (int i=0; i < lista_preco.length; i++) {
          print("Nome: ${lista_nome[i]}\npreco: ${lista_preco[i]}");
          print("-" * 70);
        }
      print("");
    } else if (opcao == 4) {
      print("\nAdeus!");
      break;
    } else {
      print("\nValor inválido\n");
    }
  }
}