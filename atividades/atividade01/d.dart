import 'dart:io';

void main() {
  stdout.write('Entre com valor de A: ');
  String? inputA = stdin.readLineSync();
  var a = (inputA != null && inputA.isNotEmpty) ? double.parse(inputA) : null;

  stdout.write('Entre com valor de B: ');
  String? inputB = stdin.readLineSync();
  var b = (inputB != null && inputB.isNotEmpty) ? double.parse(inputB) : null;

  stdout.write('Entre com valor de C: ');
  String? inputC = stdin.readLineSync();
  var c = (inputC != null && inputC.isNotEmpty) ? double.parse(inputC) : null;

  stdout.write('Entre com valor de D: ');
  String? inputD = stdin.readLineSync();
  var d = (inputD != null && inputD.isNotEmpty) ? double.parse(inputD) : null;

  double media = a! + b! + c! + d! / 4;

  print("A media dos 4 valores é: $media");
}