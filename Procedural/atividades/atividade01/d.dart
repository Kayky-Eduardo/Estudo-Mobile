import 'dart:io';

void main() {
  stdout.write('Entre com valor de A: ');
  String? inputA = stdin.readLineSync();
  var a = (inputA != null && inputA.isNotEmpty) ? double.parse(inputA) : 0;

  stdout.write('Entre com valor de B: ');
  String? inputB = stdin.readLineSync();
  var b = (inputB != null && inputB.isNotEmpty) ? double.parse(inputB) : 0;

  stdout.write('Entre com valor de C: ');
  String? inputC = stdin.readLineSync();
  var c = (inputC != null && inputC.isNotEmpty) ? double.parse(inputC) : 0;

  stdout.write('Entre com valor de D: ');
  String? inputD = stdin.readLineSync();
  var d = (inputD != null && inputD.isNotEmpty) ? double.parse(inputD) : 0;

  double media = a + b + c + d / 4;

  print("A media dos 4 valores é: $media");
}