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
      var a = (inputA != null && inputA.isNotEmpty) ? int.tryParse(inputA) : null;

      stdout.write('Digite o 2° valor: ');
      String? inputB = stdin.readLineSync();
      var b = (inputB != null && inputB.isNotEmpty) ? int.tryParse(inputB) : null;
      
      if (a != null && b != null) {
        if (a > b) {
          print("O primeiro número digitado é maior que o segundo");
        } else {
          print("\nNúmeros prímos: ");
          for (int i = a; i < b; i++) {
            if (i < 2) {
              continue;
            }

            int divisores = 0;

            for (int j = 1; j <= i; j++) {
              if (i % j == 0) {
                divisores++;
              }
            }
            
            if (divisores == 2) {
              print(i);
            }

          }
        print("\n");
        }
      } else if (a == null || b == null) {
        print("\nValor inválido! Por favor digite um número inteiro.\n");
      }
    } else if (opcao == 2) {
      print("\nAdeus!");
    } else {
      print("\nValor inválido\n");
    }
  }
}