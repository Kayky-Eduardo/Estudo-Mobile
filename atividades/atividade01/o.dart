import 'dart:io';

void main () {
  stdout.write("Digite um valor: ");
  String? input = stdin.readLineSync();
  var valor = (input != null && input.isNotEmpty) ? double.tryParse(input) : null;
  if (valor != null) {
    double resposta = (valor % 2 == 0) ? (valor + 5) : (valor + 8);
    print("Resultado ${resposta}");
  }
}