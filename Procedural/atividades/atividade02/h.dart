// fazer a soma das distancias e tempo separados e divir um pelo outro
import 'dart:io';

void main() {
  int? opcao;

  while (opcao != 2) {
    stdout.write("\n1. Calcular Velocidade Média\n2. Sair\nEscolha uma opção: ");
    String? inputO = stdin.readLineSync();
    opcao = int.tryParse(inputO ?? "");

    if (opcao == 1) {
      stdout.write("Quantos trechos deseja informar? ");
      int? n = int.tryParse(stdin.readLineSync() ?? "");

      if (n == null || n <= 0) {
        print("Número de trechos inválido.");
        continue;
      }

      double distanciaTotal = 0;
      double tempoTotal = 0;

      for (int i = 1; i <= n; i++) {
        stdout.write("\nDistância do trecho $i: ");
        double? d = double.tryParse(stdin.readLineSync() ?? "");
        stdout.write("Tempo do trecho $i: ");
        double? t = double.tryParse(stdin.readLineSync() ?? "");

        if (d == null || d <= 0 || t == null || t <= 0) {
          print("Valores inválidos. Trecho ignorado.");
          continue;
        }

        distanciaTotal += d;
        tempoTotal += t;
      }

      if (tempoTotal == 0) {
        print("\nNão é possível calcular (tempo total zero).");
      } else {
        double velocidadeMedia = distanciaTotal / tempoTotal;
        print("\nVelocidade média total: ${velocidadeMedia.toStringAsFixed(2)} m/s");
      }
    } else if (opcao == 2) {
      print("Encerrando o programa.");
    } else {
      print("Opção inválida. Tente novamente.");
    }
  }
}