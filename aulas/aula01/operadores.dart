import 'dart:io';

void main () {
  stdout.write('Entre com valor de A: ');
  String? inputA = stdin.readLineSync();
  int? a = (inputA != null && inputA.isNotEmpty) ? int.parse(inputA) : null;

  stdout.write('Entre com valor de B: ');
  String? inputB = stdin.readLineSync();
  int? b = (inputB != null && inputB.isNotEmpty) ? int.parse(inputB) : null;


  int soma = a! + b!;
  int subtracao = a - b;
  int produto = a * b;
  double divisao = a / b;
  int divInteira = a ~/ b;
  int restoDivisao = a % b;

  print('-' * 70);
  print('A soma de $a + $b = $soma');
  print('A subtracao de $a - $b = $subtracao');
  print('O produto de $a * $b = $produto');
  print('A divisao de $a / $b = ${divisao.toStringAsFixed(2)}');
  print('A divisao inteira de $a ~/ $b = $divInteira');
  print('O resto da divisao de $a % $b = $restoDivisao');
  print('-' * 70);
}