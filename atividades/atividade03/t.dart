// 20. Particionamento de Lista em Positivos e Não-Positivos
// Dada uma lista de números inteiros (positivos, negativos e zero),
// crie uma nova lista onde todos os números positivos
// aparecem primeiro, seguidos pelos números 
// não-positivos (zero e negativos).
// A ordem relativa dentro de cada grupo deve ser mantida.
import 'dart:io';
void main () {
  List<int> lista = [];
  while (true) {
    stdout.write("\n1. Adicionar valor\n2. filtrar"
    "\n3. Ver lista normal\n4. Sair\nResposta: ");
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
          if (valor != null) {
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
        List<int> lista_negativo = [];
        List<int> lista_positivo = [];
        List<int> zeros = [];
        List<int> lista_nova = [];
        lista.sort();
        for (int i=0; i<lista.length; i++) {
          if (lista[i] < 0) {
            lista_negativo.add(lista[i]);
          } else if (lista[i] > 0) {
            lista_positivo.add(lista[i]);
          } else {
            zeros.add(lista[i]);
          }
        }
        lista_nova.addAll(lista_positivo.reversed);
        lista_nova.addAll(zeros);
        lista_nova.addAll(lista_negativo.reversed);

        print("Nova lista: ");
        lista_nova.forEach((numero) => stdout.write("$numero "));
        print("\n");
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