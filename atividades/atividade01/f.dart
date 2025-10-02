import 'dart:io';

void main () {
  stdout.write("Digite um valor: ");
  String? InputValor = stdin.readLineSync();
  var valor = ((InputValor != null && InputValor.isNotEmpty)? int.parse(InputValor) : null);

  int antecessor = valor! - 1;
  int predecessor = valor + 1;

  print("Valor: $valor\nAntecessor: $antecessor\nPredecessor: $predecessor");
}