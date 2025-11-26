import 'dart:io';

void main() {
  stdout.write("Digite um ano qualquer: ");

  String? inputAno = stdin.readLineSync();
  var ano = (inputAno != null && inputAno.isNotEmpty) ? int.parse(inputAno) : -9999;

  if (ano != -9999) {
    int idade = 2025 - ano;
    print("Você tem $idade anos");
  } else {
    print('valor inválido');
  }
}