import 'dart:io';
// incompleto
void main () {

  int? opcao;

  while (opcao != 2) {
    stdout.write("\n1. Calcular MDC\n2. Sair\nEscolha uma opção: ");
    String? inputO = stdin.readLineSync();
    opcao = (inputO != null && inputO.isNotEmpty) ? int.tryParse(inputO) : null;

    if (opcao == 1 ) {
      stdout.write("Digite o primeiro valor: ");
      String? inputV1 = stdin.readLineSync();
      int? v1 = (inputV1 != null && inputV1.isNotEmpty) ? int.tryParse(inputV1) : null;

      stdout.write("Digite o segundo valor: ");
      String? inputV2 = stdin.readLineSync();
      int? v2 = (inputV2 != null && inputV2.isNotEmpty) ? int.tryParse(inputV2) : null;

      if (v1 != null && v1 > 0 && v2 != null && v2 > 0) {
        int a = v1;
        int b = v2;

        while (b != 0) {
          int resto = a % b;
          a = b;
          b = resto;
        }

        print("O MDC de $v1 e $v2 é: $a");
      } else {
        print("Valores inválidos! Digite números inteiros positivos.");
      }
    } else if (opcao == 2) {
      print("\nAdeus");
    } else {
      print("\nDigite uma opção\n");
    }
  }
}