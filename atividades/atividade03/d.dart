//4. Multiplicação de Elementos Ímpares
//Percorra uma lista de números inteiros. Para cada número,
// verifique se ele é ímpar.
// Se for ímpar, ele deve ser multiplicado por 2.
// Se for par, ele deve permanecer inalterado.
// O resultado final deve ser uma nova lista com os valores transformados.

import 'dart:io';

void main () {
  List<int> lista_inteiros = [];
  while (true) {
    stdout.write("\n1. Adicionar nota\n2. Gerar nova lista"
    "\n3. Limpar lista\n4. Sair\nResposta: ");
    String? inputO = stdin.readLineSync();
    print("");
    int? opcao = (inputO != null && inputO.isNotEmpty) ? int.parse(inputO) : null;
    if (opcao == null) {
      print("\nDigite uma opção válida\n");
    }
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
            lista_inteiros.add(valor);  
          } else { 
            print("Valor inválido");
          }
        }
      } else {
        print("Digite um valor válido");
      }
    } else if (opcao == 2) {
      if (lista_inteiros.length > 0) {
        List<int> nova_lista = [];
        for (var valor in lista_inteiros) {
          if (valor % 2 != 0) {
            nova_lista.add(valor * 2);
          } else {
            nova_lista.add(valor);
          }
        }
      print("Lista original: $lista_inteiros");
      print("Lista atual: $nova_lista");
      } else {
        print("Lista com valores insuficientes!");
      }
    } else if (opcao == 3) {
      lista_inteiros = [];
      print("Lista limpa!");
    } else if (opcao == 4) {
      print("Adeus!");
      break;
    } else {
      print("\nValor inválido\n");
    }
  }
}