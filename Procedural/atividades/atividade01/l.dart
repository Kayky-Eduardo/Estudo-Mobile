import 'dart:io';

void main () {
  stdout.write("Digite um valor: ");
  String? input = stdin.readLineSync();
  var valor = (input != null && input.isNotEmpty) ? double.tryParse(input) : null;
  if (valor != null) {
    String resposta = (valor % 2 == 0) ? 'O número ${valor} é par' : 'O número ${valor} é ímpar';
    print(resposta);
  }
}