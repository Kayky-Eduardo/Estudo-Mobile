import 'dart:io';
// incompleto
void main () {

  int? opcao;

  while (opcao != 2) {
    stdout.write("\n1. Calcular MDC\n2. Sair\nEscolha uma opção: ");
    String? inputO = stdin.readLineSync();
    opcao = (inputO != null && inputO.isNotEmpty) ? int.tryParse(inputO) : null;

    if (opcao == 1 ) {
      stdout.write("Digite o primeiro valor: ");
      String? inputV1 = stdin.readLineSync();
      int? v1 = (inputV1 != null && inputV1.isNotEmpty) ? int.tryParse(inputV1) : null;

      stdout.write("Digite o segundo valor: ");
      String? inputV2 = stdin.readLineSync();
      int? v2 = (inputV2 != null && inputV2.isNotEmpty) ? int.tryParse(inputV2) : null;

      if ((v1 != null && v1 > 0) && (v2 != null && v2 > 0)) {  
        bool feito = false;
        int resultado;
        while(!feito) {
          if (v1! > v2!) {
            double quociente = v1 / v2;
            int resto1 = v1 % v2;
            v1 = ((quociente.round()) * v2) + resto1;
            if (resto1 == 0) {
              resultado = v2;
              print("Resultado: $resultado");
              feito = true;
            } else if (resto1 != 0) {
              double quociente2 = v2 / resto1;
              int resto2 = v2 % resto1;
              v2 = (quociente2.round() * resto1) + resto2;
            }
          } else {
            print("Impossível");
            break;
          }
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