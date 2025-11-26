import 'dart:io';

void main () {
  stdout.write('Entre com valor em metros: ');
  String? input = stdin.readLineSync();
  var metros = (input != null && input.isNotEmpty) ? double.tryParse(input) : null;

  if (metros != null) {
    print('Centímetros: ${metros * 100}');
    print('Milímetros: ${metros * 1000}');
  } else {
    return;
  }
  
}
