import 'dart:io';


void main () {
    int? opcao;

  while (opcao != 2) {
    stdout.write("\n1. Resfriar\n2. Sair\nEscolha uma opção: ");
    String? inputO = stdin.readLineSync();
    opcao = (inputO != null && inputO.isNotEmpty) ? int.tryParse(inputO) : null;

    if (opcao == 1 ) {
      stdout.write("Temperatura atual: ");
      String? input = stdin.readLineSync();
      double? temp = (input != null && input.isNotEmpty) ? double.tryParse(input) : null;

      if (temp != null) {
        if (temp < 25) { 
          print("A temperatura inicial já está abaixo de 25°");
          continue;
        }
        double percentual = 0.02;
        for (int s = 0; temp! > 25; s++) {
          temp -= temp * percentual;
          if (s >= 60) {
            int min = s ~/ 60;
            int seg = s % 60;
            print("$min Minutos e $seg segundos, temperatura atual: ${temp.toStringAsFixed(2)}°C");
          } else {
            print("$s Segundos, temperatura atual: ${temp.toStringAsFixed(2)}°C");
          }
        }
      } else {
        print("\nValor inválidos!");
      }
    } else if (opcao == 2) {
      print("\nAdeus");
    } else {
      print("\nDigite uma das opções presentes!\n");
    }
  }
}