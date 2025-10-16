import 'dart:io';
import 'dart:math';

void main() {
  stdout.write('Valor para o lado do quadrado: ');
  String? inputQ = stdin.readLineSync();
  var quadrado = (inputQ != null && inputQ.isNotEmpty) ? double.tryParse(inputQ) : null;
  print("Área do quadrado: ${quadrado! * quadrado}");

  stdout.write('Altura do triângulo: ');
  String? inputAT = stdin.readLineSync();
  var trianguloA = (inputAT != null && inputAT.isNotEmpty) ? double.tryParse(inputAT) : null;

  stdout.write('Base do triângulo: ');
  String? inputBT = stdin.readLineSync();
  var trianguloB = (inputBT != null && inputBT.isNotEmpty) ? double.tryParse(inputBT) : null;
  print("Área do triângulo; ${trianguloB! * trianguloA! / 2}");


  stdout.write('Altura do retângulo: ');
  String? inputAR = stdin.readLineSync();
  var retA = (inputAR != null && inputAR.isNotEmpty) ? double.tryParse(inputAR) : null;

  stdout.write('Base do retângulo: ');
  String? inputBR = stdin.readLineSync();
  var retB = (inputBR != null && inputBR.isNotEmpty) ? double.tryParse(inputBR) : null;
  print("Área do Retângulo: ${retA! * retB!}");

  stdout.write('Entre com valor do Raio do círculo: ');
  String? inputR = stdin.readLineSync();
  double pi =  3.14;
  var raio = (inputR != null && inputR.isNotEmpty) ? double.tryParse(inputR) : null;
  print("A área do círculo é: ${(pi * pow(raio!, 2)).toStringAsFixed(2)}");
}