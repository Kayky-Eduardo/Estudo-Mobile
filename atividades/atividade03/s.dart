// 19. Análise Estatística Básica em Lista Numérica
// Dada uma lista de números inteiros, calcule o desvio padrão amostral
// de forma simplificada.
// O processo envolve:
// 1) calcular a média;
// 2) calcular a diferença entre cada número e a média,
// elevando ao quadrado;
// 3) somar os resultados;
// 4) dividir pela contagem de elementos menos 1;
// 5) tirar a raiz quadrada do resultado.

import 'dart:io';
import 'dart:math';
void main () {
  List<int> lista = [];
  while (true) {
    stdout.write("\n1. Adicionar valor\n2. calculo"
    "\n3. Ver lista\n4. Sair\nResposta: ");
    String? inputO = stdin.readLineSync();
    print("");
    int? opcao = (inputO != null && inputO.isNotEmpty) ? int.parse(inputO) : null;

    if (opcao == 1) {
      stdout.write('Quantos valores deseja adicionar: ');
      String? inputQuantidade = stdin.readLineSync();
      var n = (inputQuantidade != null && inputQuantidade.isNotEmpty) ? int.tryParse(inputQuantidade) : null; 
      if (n != null && n > 0) {
        for (int i=0; i < n; i++) {
          stdout.write("Digite o ${i + 1}° valor: ");
          String? inputV = stdin.readLineSync();
          int? valor = (inputV != null && inputV.isNotEmpty) ? int.tryParse(inputV) : null; 
          if (valor != null && valor > 0) {
            lista.add(valor);  
          } else { 
            print("Valor inválido");
          }
        }
      } else {
        print("Digite um valor válido");
      }
    } else if (opcao == 2) {
      if (lista.length > 0) {
        double media = lista.reduce((a, b) => a + b) / lista.length;
        double soma = 0;
        for (int i=0; i<lista.length; i++) {
          double diferenca = 0;
          diferenca = lista[i] - media;
          soma += pow(diferenca, 2);
        }
        double raiz = sqrt( soma / lista.length -1);

        print("O Resultado do calculo é: ${raiz.toStringAsFixed(2)}");

      } else {
        print("Elementos insuficientes na lista");
      }
    } else if (opcao == 3) {
      print("Valores na lista:\n");
        for (int i=0; i < lista.length; i++) {
          stdout.write("${lista[i]} ");
        }
      print("");
    } else if (opcao == 4) {
      print("\nAdeus!");
      break;
    } else {
      print("\nValor inválido\n");
    }
  }
}