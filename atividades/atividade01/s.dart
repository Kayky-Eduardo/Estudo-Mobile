import 'dart:io';

void main() {
  stdout.write('Capital: ');
  String? inputC = stdin.readLineSync();
  var capital = (inputC != null && inputC.isNotEmpty) ? double.tryParse(inputC) : null;

  stdout.write('Taxa: ');
  String? inputT = stdin.readLineSync();
  var taxa = (inputT != null && inputT.isNotEmpty) ? double.tryParse(inputT) : null;

  stdout.write('tempo(%): ');
  String? inputTempo = stdin.readLineSync();
  var tempo = (inputTempo != null && inputTempo.isNotEmpty) ? double.tryParse(inputTempo) : null;

  double juros = capital! * taxa! / 100 * tempo!;
  double montante = capital + juros;

  print('Juros: R\$ ${juros.toStringAsFixed(2)}');
  print('Montante: R\$ ${montante.toStringAsFixed(2)}');
}