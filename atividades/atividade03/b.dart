//2. Identificação e Contagem de Ocorrências Distintas
// Dada uma lista de inteiros que contém valores duplicados, 
//o desafio é determinar quantos valores únicos existem na lista.
// A solução deve percorrer a lista e construir uma nova coleção 
//(ou usar um Set temporário, se permitido, ou uma lista auxiliar) 
//para armazenar apenas os elementos que ainda não foram vistos,
// reportando o total de elementos únicos ao final.



import 'dart:io';
void main () {
  List<int> lista_inteiros = [];
  while (true) {
    stdout.write("\n1. Adicionar numero\n2. filtrar\n3. Sair\nResposta: ");
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
            lista_inteiros.add(valor);  
          } else { 
            print("Valor inválido");
          }
        }
      } else {
        print("Digite um valor válido");
      }
    } else if (opcao == 2) {
      List<int> filtro = [];
      int unicos = 0;
      if (lista_inteiros.length > 0) {
        for (var valor in lista_inteiros) {
          if (filtro.contains(valor)) {
            continue;
          } else {
            filtro.add(valor);
            unicos++;
          }
        }
        print("Quantidade de números únicos: $unicos");
        stdout.write("Duplicatas eliminadas!\nLista atual: ");
        filtro.forEach((numero) => stdout.write("$numero "));
        print("\n");
      } else {
        print("Lista vazia!");
      }
    } else if (opcao == 3) {
      print("\nAdeus!");
      break;
    } else {
      print("\nValor inválido\n");
    }
  }
}