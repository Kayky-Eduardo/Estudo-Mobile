//10. Reversão Manual da Ordem dos Elementos
// Dada uma lista de strings, crie uma nova lista que 
//contenha os mesmos elementos, mas na ordem inversa 
//da lista original. O uso de List.reversed é permitido 
//para fins de comparação, mas a implementação principal
// deve usar uma estrutura de repetição (for ou while).

import 'dart:io';

void main () {
  List<int> lista = [];
  while (true) {
    stdout.write("\n1. Adicionar valor\n2. Lista inversa"
    "\n3. Limpar lista\n4. Sair\nResposta: ");
    String? inputO = stdin.readLineSync();
    print("");
    int? opcao = (inputO != null && inputO.isNotEmpty) ? int.parse(inputO) : null;

    if (opcao == 1) {
      stdout.write('Quantos valores deseja adicionar: ');
      String? inputQuantidade = stdin.readLineSync();
      var n = (inputQuantidade != null && inputQuantidade.isNotEmpty) ? int.tryParse(inputQuantidade) : null; 
      if (n != null && n > 0) {
        for (int i=0; i < n; i++) {
          stdout.write("Digite o ${i + 1}° valor: ");
          String? inputV = stdin.readLineSync();
          int? valor = (inputV != null && inputV.isNotEmpty) ? int.tryParse(inputV) : null; 
          if (valor != null && valor > 0) {
            lista.add(valor);  
          } else { 
            print("Valor inválido");
          }
        }
      } else {
        print("Digite um valor válido");
      }
    } else if (opcao == 2) {
      if (lista.length > 0) {
        List<int> lista_inversa = [];
        for(int i = lista.length - 1; i >= 0; i--) {
          lista_inversa.add(lista[i]);
        }
        print("Lista original: $lista");
        print("Lista atual: $lista_inversa");
      } else {
        print("Lista com valores insuficientes!");
      }
    } else if (opcao == 3) {
      lista = [];
      print("Lista limpa!");
    } else if (opcao == 4) {
      print("Adeus!");
      break;
    } else {
      print("\nValor inválido\n");
    }
  }
}