//3. Cálculo de Média Ponderada Após Descarte
//Considere uma lista de notas de alunos. O exercício exige que se descarte a menor nota da lista e,
// em seguida, calcule a média aritmética das notas restantes.
// O resultado deve ser um número decimal (double).

import 'dart:io';


void main () {
  List<double> notas = [];
  while (true) {
    stdout.write("\n1. Adicionar nota\n2. Calcular média aritmética das notas"
    "\n3. Limpar lista\n4. Sair\nResposta: ");
    String? inputO = stdin.readLineSync();
    print("");
    int? opcao = (inputO != null && inputO.isNotEmpty) ? int.parse(inputO) : null;
    if (opcao == null) {
      print("\nDigite uma opção válida\n");
    }
    if (opcao == 1) {
      stdout.write('Quantos valores deseja adicionar: ');
      String? inputQuantidade = stdin.readLineSync();
      var n = (inputQuantidade != null && inputQuantidade.isNotEmpty) ? int.tryParse(inputQuantidade) : null; 
      if (n != null && n > 0) {
        for (int i=0; i < n; i++) {
          stdout.write("Digite o ${i + 1}° valor: ");
          String? inputV = stdin.readLineSync();
          double? valor = (inputV != null && inputV.isNotEmpty) ? double.tryParse(inputV) : null; 
          if (valor != null && valor > 0) {
            notas.add(valor);  
          } else { 
            print("Valor inválido");
          }
        }
      } else {
        print("Digite um valor válido");
      }
    } else if (opcao == 2) {
      if (notas.length > 1) {
        double menor = notas.reduce((a, b) => a > b ? b : a);
        notas.removeAt(notas.indexOf(menor));
        double media = notas.reduce((a, b) => a + b) / notas.length;
        print("Média: $media");
        print("\n");
      } else {
        print("Lista com valores insuficientes!");
      }
    } else if (opcao == 3) {
      notas = [];
      print("Lista limpa!");
    } else if (opcao == 4) {
      print("Adeus!");
      break;
    } else {
      print("\nValor inválido\n");
    }
  }
}