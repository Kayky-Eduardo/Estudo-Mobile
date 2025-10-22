import 'dart:io';

void main() {

  int? opcao;

  while (opcao != 2) {
    stdout.write("\n1. Verificar ano\n2. Sair\nEscolha uma opção: ");
    String? inputO = stdin.readLineSync();
    opcao = (inputO != null && inputO.isNotEmpty) ? int.tryParse(inputO) : null;

    if (opcao == 1) {
      stdout.write("\nDigite um ano: ");
      String? InputAno = stdin.readLineSync();
      int? bissexto = (InputAno != null && InputAno.isNotEmpty) ? int.tryParse(InputAno) : null;

      if (bissexto != null) {
        if ((bissexto % 4 == 0 && bissexto % 100 != 0) || (bissexto % 400 == 0)) {
          print("\n$bissexto é um ano bissexto.\n");
        } else {
          print("\n$bissexto não é um ano bissexto.\n");
        }
      }
    }
 
  }
}