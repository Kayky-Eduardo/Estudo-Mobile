import 'dart:io';

void main () {
  stdout.write("Digite um valor: ");
  String? InputValor = stdin.readLineSync();
  var valor = ((InputValor != null && InputValor.isNotEmpty)? int.parse(InputValor) : null);
  
  if (valor != null) {
    int antecessor = valor - 1;
    int sucessor = valor + 1;
    print("Valor: $valor\nAntecessor: $antecessor\nSucessor: $sucessor");
  } else {
    print("Valor inválido");
  }  
}