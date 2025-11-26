import 'dart:io';

void main () {
  stdout.write('Entre com valor de A: ');
  String? inputA = stdin.readLineSync();
  var a = (inputA != null && inputA.isNotEmpty) ? double.tryParse(inputA) : null;

  if (a != null) {
    print('Dobro: ${a * 2}');
    print('Triplo: ${a * 3}');  
  } else {
    return;
  }
  
}