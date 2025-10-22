import 'dart:io';

// incompleta
void main () {

  int? opcao;

  while (opcao != 2) {
    stdout.write("\n1. Calcular\n2. Sair\nEscolha uma opção: ");
    String? inputO = stdin.readLineSync();
    opcao = (inputO != null && inputO.isNotEmpty) ? int.tryParse(inputO) : null;

    if (opcao == 1 ) {
      stdout.write("\nDigite o valor de n: ");
      String? input = stdin.readLineSync();
      int? n = (input != null && input.isNotEmpty) ? int.tryParse(input) : null;

      if (n != null) {
        for (int i = n; i != 0; i--) {
          stdout.write("$i ");
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