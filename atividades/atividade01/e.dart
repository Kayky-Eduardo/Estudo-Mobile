import 'dart:io';

void main () {
  stdout.write('Entre com valor de A: ');
  String? inputA = stdin.readLineSync();
  var a = (inputA != null && inputA.isNotEmpty) ? double.tryParse(inputA) : null;

  stdout.write('Entre com valor de B: ');
  String? inputB = stdin.readLineSync();
  var b = (inputB != null && inputB.isNotEmpty) ? double.tryParse(inputB) : null;

  if (b == 0 ) {
    print("não é possível fazer divisão por 0");
  } else if (a == null || b == null){
    print("Verifique suas respostas");
  } else {
    double divisao = a / b;
    print("$a / $b = ${divisao.toStringAsFixed(2)}");
  }
}