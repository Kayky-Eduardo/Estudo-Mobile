import 'dart:io';

void main () {
  stdout.write('Entre com o valor em reais: ');
  String? input = stdin.readLineSync();
  var reais = (input != null && input.isNotEmpty) ? double.tryParse(input) : null;

  if (reais != null) {
    double euro = reais / 6.26;
    double dolar = reais / 5.37;
    double won = reais / 0.0038;

    print('Valor em Euro: ${euro.toStringAsFixed(2)}');
    print('Valor em Dolar: ${dolar.toStringAsFixed(2)}');
    print('Valor em Won: ${won.toStringAsFixed(2)}');
  } else {
    return;
  }
  
}
