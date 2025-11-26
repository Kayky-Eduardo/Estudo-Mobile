import 'dart:io';
void main() {
  print('1 - Numero par');
  print('2 - Maior número');
  print('3 - Sair') ;

  stdout.write('Entre com um valor: ');
  String? input = stdin.readLineSync();
  int? opcao = (input != null && input.isNotEmpty) ? int.parse(input) : null;

  switch(opcao) {
    case 1:
      stdout.write('Valor: ');
      String? valorInput = stdin.readLineSync();
      int? numero = (valorInput != null && valorInput.isNotEmpty) ? int.parse(valorInput) : null;

      if (numero! % 2 == 0) {
        print('O número $numero é par!');
      } else {
        print('O número $numero é ímpar!');
      }
      break;
    case 2:
      stdout.write('Entre com valor de A: ');
      String? inputA = stdin.readLineSync();
      int? a = (inputA != null && inputA.isNotEmpty) ? int.parse(inputA) : null;

      stdout.write('Entre com valor de B: ');
      String? inputB = stdin.readLineSync();
      int? b = (inputB != null && inputB.isNotEmpty) ? int.parse(inputB) : null;

      if (a!>b!) {
        print('O número $a é maior que o número $b!');
      } else if (a<b) {
        print('O número $a é menor que o número $b!');
      } else {
        print('Os números são iguais!');
      }
      break;
    case 3:
      print('Saindo do programa');
      break;
    default:
      print('Fora do intervalo de opções!');
  }
}