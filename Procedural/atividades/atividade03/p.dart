// 16. Interseção de Duas Listas
// Dadas duas listas de inteiros, crie uma nova lista contendo
// apenas os elementos que estão presentes em ambas
// as listas (a interseção).

import 'dart:io';
void main () {
  List<int> lista = [];
  while (true) {
    stdout.write("\n1. Adicionar item na lista\n2. Nova lista(interseção)"
    "\n3. Ver lista\n4. Sair\nResposta: ");
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
        List<int> lista_intesecao = [];
        for (int i=0; i<lista.length; i++) {
          for (int j=0; j<i; j++) {
            if (lista[i] == lista[j] && !lista_intesecao.contains(lista[i])) {
              lista_intesecao.add(lista[i]);
            }
          }
        }

        print("Resultado:\n");
        for (int i=0; i < lista_intesecao.length; i++) {
          stdout.write("${lista_intesecao[i]} ");
        }
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