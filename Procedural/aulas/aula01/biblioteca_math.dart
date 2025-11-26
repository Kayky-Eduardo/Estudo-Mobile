import 'dart:io';
import 'dart:math';

void main() {
  stdout.write('Entre com valor de X: ');
  String? inputX = stdin.readLineSync();
  double? x = (inputX != null && inputX.isNotEmpty) ? double.parse(inputX) : null;

  stdout.write('Entre com valor de Y: ');
  String? inputY = stdin.readLineSync();
  double? y = (inputY != null && inputY.isNotEmpty) ? double.parse(inputY) : null;

  print('-' * 70);
  
  double raiz = sqrt(x!);
  print('A raiz quadrada de $x = ${raiz.toStringAsFixed(2)}');

  // pow retorna num, convertemos para double
  double potencia = pow(x, y!).toDouble();
  print('$x elevado a $y = $potencia');

  print('O maior entre $x e $y =  ${max(x, y)}');
  print('O menor entre $x e $y =  ${min(x, y)}');
  
  // valor absoluto
  double negativo = -15.7;
  print('O valor absoluto de $negativo = ${negativo.abs()}');

  //seno e cosseno
  // 45° em radianos
  double angulo = pi / 4;
  print('Seno de 45° = ${sin(angulo)}');
  print('Cosseno de 45° = ${cos(angulo)}');

  // gerando número aleatório
  Random random = Random();
  int aleatorio = random.nextInt(100);
  print('Número aleatório entre 0 e 99 = $aleatorio');
  print('-' * 70);
}