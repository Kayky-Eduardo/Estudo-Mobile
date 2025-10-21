import 'dart:io';

void main() {
    stdout.write('Digite o 1º número: ');
    String? inputA = stdin.readLineSync();
    var a = (inputA != null && inputA.isNotEmpty) ? int.tryParse(inputA) : null;

    stdout.write('Digite o 2º número: ');
    String? inputB = stdin.readLineSync();
    var b = (inputB != null && inputB.isNotEmpty) ? int.tryParse(inputB) : null;

    stdout.write('Digite o 3º número: ');
    String? inputC = stdin.readLineSync();
    var c = (inputC != null && inputC.isNotEmpty) ? int.tryParse(inputC) : null;

  int temp = 0;
  if (a! < b!) {
    temp = a;
    a = b;
    b = temp;
  }
  if (a < c!) {
    temp = a;
    a = c;
    c = temp;
  }
  if (b < c) {
    temp = b;
    b = c;
    c = temp;
  }

  print("valores em ordem decrescente $a, $b, $c");
}
