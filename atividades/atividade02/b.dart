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
        for (int i = 0; i < n; i++) {
          int valor = i * (i);
          print("$i°: $valor x ${i + 1}");
        }
      } else {
        print("Valor inválido!");
      }
    }
  }
}