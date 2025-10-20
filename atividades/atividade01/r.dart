import 'dart:io';

void main() {

  stdout.write('1. Celsius para Fahrenheit\n2 Fahrenheit para Celsius\nEscolha uma opção: ');
  String? inputO = stdin.readLineSync();
  var opcao = (inputO != null && inputO.isNotEmpty) ? int.tryParse(inputO) : null;
  if (opcao != null) {
    if (opcao == 1)
    {
      stdout.write('Digite a temperatura em °C: ');
      String? inputC = stdin.readLineSync();
      var c = (inputC != null && inputC.isNotEmpty) ? double.tryParse(inputC) : null;
      if (c != null) print('Fahrenheit: ${(c * 9 / 5) + 32}');
      else print('Valor inválido');
    }

    else if (opcao == 2)
    {
      stdout.write('Digite a temperatura em °F: ');
      String? inputF = stdin.readLineSync();
      var f = (inputF != null && inputF.isNotEmpty) ? double.tryParse(inputF) : null;
      if (f != null) print('Celsius: ${((f - 32) * 5 / 9).toStringAsFixed(2)}');
      else print('Valor inválido');
    }

    else
    {
      print('Opção inválida.');
    }

  }
  
}