import 'dart:io';

void main () {

  int? opcao;

  while (opcao != 2) {
    stdout.write("\n1. Verificar ângulo\n2. Sair\nEscolha uma opção: ");
    String? inputO = stdin.readLineSync();
    opcao = (inputO != null && inputO.isNotEmpty) ? int.tryParse(inputO) : null;

    if (opcao == 1 ) {
      stdout.write("Digite o valor de n: ");
      String? input = stdin.readLineSync();
      double? a = (input != null && input.isNotEmpty) ? double.tryParse(input) : null;

      if (a != null) {
        String tipo = "";
        if (a < 90) {
          tipo = "Este ângulo é um ângulo agudo";
        } else if ( a == 90) {
          tipo = "Este ângulo é um ângulo reto";
        } else if (90 < a && a < 180) {
          tipo = "Este ângulo é um ângulo obtuso";
        } else if ( a == 180 ) {
          tipo = "Este ângulo é um ângulo rente";
        }
        
        print(tipo);

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