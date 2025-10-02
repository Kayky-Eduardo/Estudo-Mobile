import 'dart:io';

void main () {
  stdout.write('Entre com valor de A: ');
  String? inputA = stdin.readLineSync();
  var a = (inputA != null && inputA.isNotEmpty) ? int.parse(inputA) : null;

  stdout.write('Entre com valor de B: ');
  String? inputB = stdin.readLineSync();
  var b = (inputB != null && inputB.isNotEmpty) ? int.parse(inputB) : null;

  print('-' * 70);
  print('$a == $b Resultado: ${a == b}');
  print('$a != $b Resultado: ${a != b}');
  print('$a > $b Resultado: ${a! > b!}');
  print('$a < $b Resultado: ${a < b}');
  print('$a >= $b Resultado: ${a >= b}');
  print('$a <= $b Resultado: ${a <= b}');

  bool igual = a == b;
  print('Verificação de igualdade: $igual');
  print('-' * 70);
}