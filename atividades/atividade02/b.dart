import 'dart:io';

void main() {
  int? opcao;
  
  while (opcao != 2) {
    stdout.write("1. Calcular Fatorial\n2. Sair\nResposta: ");
    
    String? inputO = stdin.readLineSync();
    opcao = (inputO != null && inputO.isNotEmpty) ? int.tryParse(inputO) : null;

    if (opcao == 1) {
      stdout.write("Digite um número inteiro: ");
      String? inputN = stdin.readLineSync();
      var n = (inputN != null && inputN.isNotEmpty) ? int.tryParse(inputN) : null;

      if (n != null && n >= 0) {
        int resultado = 1;
        for (int i = 1; i < n; i++) {
          resultado *= i;
          print("$i°: $resultado");
        }
      } else {
        print("Valor inválido!");
      }
    } else if (opcao == 2) {
      print("\nAdeus!\n");
    } else {
      print("\nOpção inválida. Escolha 1 ou 2.\n");
    }
  }
}