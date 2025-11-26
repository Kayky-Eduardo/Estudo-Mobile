import 'dart:io';

void main () {
  stdout.write('Entre com valor: ');
  String? input = stdin.readLineSync();
  var valor = (input != null && input.isNotEmpty) ? double.tryParse(input) : null;

  if (valor != null) {
    for (int i = 1; i <= 10; i++) {
      print('$valor x $i = ${valor * i}');
    }
  } else {
    return;
  }
  
}
