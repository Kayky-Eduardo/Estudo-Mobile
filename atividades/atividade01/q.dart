import 'dart:io';

void main() {
  stdout.write('Digite seu peso (kg): ');
  String? inputP = stdin.readLineSync();
  var peso = (inputP != null && inputP.isNotEmpty) ? double.tryParse(inputP) : null;

  String? inputA = stdin.readLineSync();
  stdout.write('Digite sua altura (m): ');
  var altura = (inputA != null && inputA.isNotEmpty) ? double.tryParse(inputA) : null;

  double imc = peso! / (altura! * altura);
  print('Seu IMC é ${imc.toStringAsFixed(2)}');

  if (imc < 18.5) {print('Abaixo do peso'); }
  else if (imc < 24.9) { print('Peso normal'); }
  else if (imc < 29.9) { print('Sobrepeso'); }
  else if (imc < 34.9) { print('Obesidade grau I'); }
  else if (imc < 39.9) { print('Obesidade grau II'); }
  else { print('Obesidade grau III'); }
}