// Números primos no intervalo: Faça um programa que receba dois números
// inteiros A e B e imprima todos os números primos entre A e B (inclusive).
import 'dart:io';
void main () {
  int? opcao;
  while (opcao != 2) {
    stdout.write("1. Descobrir numeros primos\n2. Sair\nResposta: ");
    String? inputO = stdin.readLineSync();

    opcao = (inputO != null && inputO.isNotEmpty) ? int.parse(inputO) : null;
    if (opcao == null) {
      print("\nDigite um valor válido\n");
    }
    if (opcao == 1) {
      stdout.write('Digite o 1° valor: ');
      String? inputA = stdin.readLineSync();
      var a = (inputA != null && inputA.isNotEmpty) ? int.parse(inputA) : null;

      stdout.write('Digite o 2° valor: ');
      String? inputB = stdin.readLineSync();
      var b = (inputB != null && inputB.isNotEmpty) ? int.parse(inputB) : null;
      
      print("\nNúmeros prímos: ");
      if (a != null && b != null) {
        for (int i = a; i < b; i++) {
          if (i % 2 != 0) {
            print(i);
          }
        }
      print("\n");
      }
    } else if (opcao == 2) {
      print("\nAdeus!");
    } else {
      print("\nValor inválido\n");
    }
  }
}