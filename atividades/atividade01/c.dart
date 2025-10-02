import 'dart:io';

void main() {
  stdout.write("Digite um ano qualquer: ");

  String? inputAno = stdin.readLineSync();
  var ano = (inputAno != null && inputAno.isNotEmpty) ? int.parse(inputAno) : null;

  int idade = 2025 - ano!;

  print("Você tem $idade anos");
}