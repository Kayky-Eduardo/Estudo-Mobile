import 'dart:io';

void main (){
  stdout.write('Entre com valor de A: ');
  String? inputA = stdin.readLineSync();
  var a = (inputA != null && inputA.isNotEmpty) ? int.parse(inputA) : null;

  stdout.write('Entre com valor de B: ');
  String? inputB = stdin.readLineSync();
  var b = (inputB != null && inputB.isNotEmpty) ? int.parse(inputB) : null;

  if (a != null || b != null) {
    int soma = a! + b!;
    print('O valor da soma de $a + $b é $soma');  
    print('O valor da subtração é: ${a - b}');
    print('O valor da mutiplicação é: ${a * b}');
    if (b != 0) {
      print('O valor da divisão é: ${a / b}');
    } else {
      print('É impossível dividir por 0');
    }   
    
  } else {
    print('Valor inválido');
  }
}