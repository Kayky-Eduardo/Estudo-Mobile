import 'dart:io';

class Triangulo {
  double base;
  double altura;

  Triangulo({required this.base, required this.altura});

  double calcularArea() {
    return (base * altura) / 2;
  }
}

void main() {
  print('');
  stdout.write("Base do triângulo: ");
  double base = double.parse(stdin.readLineSync()!);

  stdout.write("Altura do triângulo: ");
  double altura = double.parse(stdin.readLineSync()!);

  Triangulo triangulo = Triangulo(base: base, altura: altura);

  double area = triangulo.calcularArea();

  print("A área do triângulo é: $area");
}