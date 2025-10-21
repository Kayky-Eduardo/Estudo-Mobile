import 'dart:io';

void main () {

  int opcao = 1;
  
  while(opcao != 2) {
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
      print("Soma de todos os múltiplos de 3 e 5: $soma");
    }
  } 
}