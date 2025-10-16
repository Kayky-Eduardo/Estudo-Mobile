import 'dart:io';

void main() {
  List<int> numeros = [];
  for (int i = 1; i <= 3; i++) {
    stdout.write('Digite o ${i}º número: ');
    String? input = stdin.readLineSync();
    
    if (input != null && input.isNotEmpty) {
      numeros.add(int.parse(input));
    } else {
      print("Valor vazio!");
      continue;
    }
  }
  for (int i = 0; i < numeros.length - 1; i++) {
    for (int j = i + 1; j < numeros.length; j++) {
      if (numeros[i] < numeros[j]) {
        var temp = numeros[i];
        numeros[i] = numeros[j];
        numeros[j] = temp;
      }
    }
  }
  print("\nNúmeros em ordem decrescente: $numeros");

}
