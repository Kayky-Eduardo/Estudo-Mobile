import 'dart:io';
void main() {
  stdout.write('Entre com valor de A: ');
  String? inputA = stdin.readLineSync();
  int? a = (inputA != null && inputA.isNotEmpty) ? int.parse(inputA) : null;

  stdout.write('Entre com valor de B: ');
  String? inputB = stdin.readLineSync();
  int? b = (inputB != null && inputB.isNotEmpty) ? int.parse(inputB) : null;

  stdout.write('Entre com valor de C: ');
  String? inputC = stdin.readLineSync();
  int? c = (inputC != null && inputC.isNotEmpty) ? int.parse(inputC) : null;

  bool proposicao1 = a! > b!;
  bool proposicao2 = b < c!;


  print('Verdadeiro ===========');
  print('$a > $b && $b < $c - Resposta: ${proposicao1 && proposicao2}');
  print('$a > $b || $b > $c - Resposta: ${proposicao1 || proposicao2}');
  print('');

  bool proposicao3 = a < b;
  bool proposicao4 = b > c;

print('Falso ===========');
print('$a < $b && $b > $c - Resposta: ${proposicao3 && proposicao4}');
print('$a > $b || $b > $c - Resposta: ${proposicao3 || proposicao4}');
print('');

bool v = true;
bool f = false;

print('Negando -------------');
print('Negando o V: ${!v}');
print('Negando o F: ${!f}');
}