import 'dart:io';

void main () {

  int? opcao;

  while (opcao != 2) {
    stdout.write("\n1. Conversão\n2. Sair\nEscolha uma opção: ");
    String? inputO = stdin.readLineSync();
    opcao = (inputO != null && inputO.isNotEmpty) ? int.tryParse(inputO) : null;

    if (opcao == 1 ) {
      stdout.write("Digite o valor em joules: ");
      String? input = stdin.readLineSync();
      double? joules = (input != null && input.isNotEmpty) ? double.tryParse(input) : null;

      if (joules != null) {
        double calorias = joules * 4.184;
        print("$joules são ${calorias.toStringAsFixed(2)} calorias.");
      } else {
        print("\nValor inválidos!");
      }
    } else if (opcao == 2) {
      print("\nAdeus");
    } else {
      print("\nDigite uma opção\n");
    }
  }
}