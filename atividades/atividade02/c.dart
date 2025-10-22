import 'dart:io';

void main () {

  int? opcao;
  
  while(opcao != 2) {
    stdout.write("\n1. Soma de todos os múltiplos de 3 e 5"
    "\n2. Sair\nEscolha uma opção: ");
    String? inputO = stdin.readLineSync();
    opcao = (inputO != null && inputO.isNotEmpty) ? int.tryParse(inputO) : null;

    if (opcao == 1) {
      stdout.write("Digite um número inteiro: ");
      String? input = stdin.readLineSync();
      var valor = (input != null && input.isNotEmpty) ? int.tryParse(input) : null;

      int soma = 0;

      if (valor != null) {
        for (int i = 1; i < valor; i++) {
          if (i % 5 == 0 || i % 3 == 0) {
            soma += i;
          }
        }
        print("\nResultado: $soma");
      }
    } else if (opcao == 2) {
      print("Adeus!");
    } else {
      print("\nDigite uma opção válida!");
    }
  } 
}