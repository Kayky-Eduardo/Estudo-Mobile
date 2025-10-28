//1. Filtragem e Soma Condicional de Pares
// Dada uma lista de números inteiros, o objetivo é primeiro filtrar apenas os números que são
// pares e, simultaneamente, maiores que 10. Após a filtragem, deve-se calcular a soma total desses números restantes.

import 'dart:io';
void main () {
  List<int> lista_numeros = [];
  while (true) {
    stdout.write("\n1. Adicionar numero\n2. Somar numeros pares"
    "\n3. Ver lista\n4. Sair\nResposta: ");
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
            lista_numeros.add(valor);  
          } else { 
            print("Valor inválido");
          }
        }
      } else {
        print("Digite um valor válido");
      }
    } else if (opcao == 2) {
      List<int> filtro = lista_numeros.where((num) => num % 2 == 0).toList();
      int soma = filtro.reduce((a, b) => a + b);
      print("Resultado da somatória: $soma");
    } else if (opcao == 3) {
      stdout.write("Valores na lista: ");
      lista_numeros.forEach((numero) => stdout.write("$numero "));
      print("");
    } else if (opcao == 4) {
      print("\nAdeus!");
      break;
    } else {
      print("\nValor inválido\n");
    }
  }
}