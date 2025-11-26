import 'dart:math';
import 'dart:io';

void main () {

  int? opcao;

  while (opcao != 2) {
    stdout.write("\n1. Calcular\n2. Sair\nEscolha uma opção: ");
    String? inputO = stdin.readLineSync();
    opcao = (inputO != null && inputO.isNotEmpty) ? int.tryParse(inputO) : null;

    if (opcao == 1 ) {
      stdout.write("Digite o valor de n: ");
      String? input = stdin.readLineSync();
      double? n = (input != null && input.isNotEmpty) ? double.tryParse(input) : null;

      if (n != null) {
        for (int i = 0; i <= n; i++) {
          num resultado = pow(2, i);
          print("2^$i = $resultado");
        }
      } else {
        print("\nValor inválidos!");
      }
    } else if (opcao == 2) {
      print("\nAdeus");
    } else {
      print("\nDigite uma das opções presentes!\n");
    }
  }
}