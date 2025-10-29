// 17. Normalização e Classificação de Dados
// Dada uma lista de strings com valores duplicados
// e em ordem aleatória, o objetivo é primeiro 
//remover todas as duplicatas e, em seguida,
// ordenar a lista resultante em ordem alfabética.

import 'dart:io';
void main () {
  List<String> lista = [];
  while (true) {
    stdout.write("\n1. Adicionar item na lista\n2. Filtragem"
    "\n3. Ver lista normal\n4. Sair\nResposta: ");
    String? inputO = stdin.readLineSync();
    print("");
    int? opcao = (inputO != null && inputO.isNotEmpty) ? int.parse(inputO) : null;

    if (opcao == 1) {
      stdout.write("Digite o nome do item: ");
      String? inputItem = stdin.readLineSync();
      String? item = (inputItem != null && inputItem.trim().isNotEmpty)? inputItem : null;

      if (item != null && item != '') {
        lista.add(item);
      } else {
        print("Erro! Verifique suas respostas!");
      }
    } else if (opcao == 2) {
      if (lista.length > 0) {
        List<String> nova_lista = [];
        for (var item in lista) {
          if (!nova_lista.contains(item)) {
            nova_lista.add(item);
          }
        }

        print("-" * 70);
        print("Lista original: $lista\nLista sem duplicatas: $nova_lista");
        print("-" * 70);
      } else {
        print("Elementos insuficientes na lista");
      }
    } else if (opcao == 3) {
      print("Valores na lista:\n");
        for (int i=0; i < lista.length; i++) {
          stdout.write("${lista[i]} ");
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