// 18. Checagem de Inclusão Total de Elementos
// Dadas duas listas de inteiros, Lista Principal 
// e Lista Subconjunto, verifique se todos os elementos 
// da Lista Subconjunto estão presentes na Lista Principal.
// O resultado deve ser um valor booleano (true ou false).

import 'dart:io';
void main () {
  List<int> lista = [];
  List<int> lista_subconjunto = [];
  bool diferente = false;
  while (true) {
    stdout.write("\n1. Adicionar\n2. Filtragem"
    "\n3. Ver lista normal\n4. Sair\nResposta: ");
    String? inputO = stdin.readLineSync();
    print("");
    int? opcao = (inputO != null && inputO.isNotEmpty) ? int.parse(inputO) : null;

    if (opcao == 1) {
      stdout.write("Digite o valor para a lista principal: ");
      String? inputValor1 = stdin.readLineSync();
      int? valor1 = (inputValor1 != null && inputValor1.isNotEmpty)? int.tryParse(inputValor1) : null;

      stdout.write("Digite o valor para a Lista Subconjunto: ");
      String? inputValor2 = stdin.readLineSync();
      int? valor2 = (inputValor2 != null && inputValor2.isNotEmpty)? int.tryParse(inputValor2) : null;

      if (valor1 != null && valor1 >= 0 && (valor2 != null && valor2 >= 0)) {
        lista.add(valor1);
        lista_subconjunto.add(valor2);
      } else {
        print("Erro! Verifique suas respostas!");
      }
    } else if (opcao == 2) {
      if (lista.length > 0) {
        int qnt_diferenca = 0;
        // for (int i=0; i<lista.length; i++) {
        //   for(int j=0; j<i; j++) {
        //     if(!)
        //   }
        // }
        for (var valor1 in lista) {
          if (!lista_subconjunto.contains(valor1)) {
            qnt_diferenca++;
            diferente = true;
          }
        }

        print("-" * 70);
        print("Diferente: $diferente");
        print("Lista Principal: $lista\nLista Subconjunto: $lista_subconjunto\n"
        "Quantidade de numeros diferentes: $qnt_diferenca");
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