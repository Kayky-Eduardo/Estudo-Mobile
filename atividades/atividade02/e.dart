import 'dart:io';

void main () {

  int? opcao;

  while (opcao != 2) {
    stdout.write("\n1. Calcular velocidade\n2. Sair\nEscolha uma opção: ");
    String? inputO = stdin.readLineSync();
    opcao = (inputO != null && inputO.isNotEmpty) ? int.tryParse(inputO) : null;

    if (opcao == 1 ) {
      stdout.write("Digite o tempo em segundos: ");
      String? inputT = stdin.readLineSync();
      double? tempo = (inputT != null && inputT.isNotEmpty) ? double.tryParse(inputT) : null;

      stdout.write("Digite a velocidade constante: ");
      String? inputV = stdin.readLineSync();
      double? velocidade = (inputV != null && inputV.isNotEmpty) ? double.tryParse(inputV) : null;

      if (tempo != null && velocidade != null) {
        double resultadoAceleracao = 0;
        for (int i = 0; i <= tempo; i++) {
          resultadoAceleracao += velocidade;
          print("Tempo: ${i}s | Velocidade: ${resultadoAceleracao}");
        }
      } else {
        print("\nValor inválidos!");
      }
    } else if (opcao == 2) {
      print("\nAdeus");
    } else {
      print("\nDigite uma opção\n");
    }
  }
}