import 'dart:io';

void main () {
  stdout.write("Digite o valor de A: ");
  String? inputA = stdin.readLineSync();
  var valorA = (inputA != null && inputA.isNotEmpty) ? int.tryParse(inputA) : null;
  
  stdout.write("Digite o valor de B: ");
  String? inputB = stdin.readLineSync();
  var valorB = (inputB != null && inputB.isNotEmpty) ? int.tryParse(inputB) : null;

  if (valorA != null && valorB !=null) {
    var igual = valorA == valorB;
    String tipo = igual ? 'soma' : 'multiplicação';
    int c = igual ? (valorA + valorB) : (valorA * valorB);
    print("Ação feita: ${tipo}\nResultado: ${c}");
  }
}