import 'dart:io';

void main () {
  stdout.write('Entre com o valor em reais: ');
  String? input = stdin.readLineSync();
  var reais = (input != null && input.isNotEmpty) ? double.tryParse(input) : null;

  if (reais != null) {
    double euro = reais / 6.0;
    double dolar = reais / 5.5;
    double won = reais / 0.0041;

    print('Valor em Euro: ${euro.toStringAsFixed(2)}');
    print('Valor em Dolar: ${dolar.toStringAsFixed(2)}');
    print('Valor em Won: ${won.toStringAsFixed(2)}');
  } else {
    return;
  }
  
}
