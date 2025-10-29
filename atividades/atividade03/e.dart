// 5. Determinação do Segundo Valor de Pico
// Dada uma lista de números inteiros,
// encontre e imprima o segundo
// maior valor presente na lista.
// A lista pode conter duplicatas,
// mas o segundo maior valor deve ser o valor distinto que é imediatamente menor que o maior valor.

// pendente
import 'dart:io';

void main () {
  List<int> lista_inteiros = [];
  while (true) {
    stdout.write("\n1. Adicionar nota\n2. Gerar nova lista"
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
        Set<int> nova_lista = {};
        for (int i=0; i < lista_inteiros.length; i++) {
          for (int j=0; j < i; j++) {
            if (lista_inteiros[i] > lista_inteiros[j]) {
              nova_lista.add(j);
            } else {
              nova_lista.add(i);
            }
          }
        }
        print("Lista original: $lista_inteiros");
        print("Segundo maior número: ${nova_lista}");
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