// 8. Transformação de Lista de Palavras em Lista de Comprimentos
// Dada uma lista de palavras, crie uma nova lista de inteiros onde
// cada inteiro representa o número de caracteres da palavra correspondente
// na lista original.

import 'dart:io';
void main () {
  List<String> lista = [];
  while (true) {
    stdout.write("\n1. Adicionar palavras\n2. Transformar"
    "\n3. Ver lista\n4. Sair\nResposta: ");
    String? inputO = stdin.readLineSync();
    print("");
    int? opcao = (inputO != null && inputO.isNotEmpty) ? int.parse(inputO) : null;
    if (opcao == null) {
      print("\nDigite uma opção válida\n");
    }
    if (opcao == 1) {
      stdout.write('Quantas palavras deseja adicionar: ');
      String? inputQuantidade = stdin.readLineSync();
      var n = (inputQuantidade != null && inputQuantidade.isNotEmpty) ? int.tryParse(inputQuantidade) : null; 
      if (n != null && n > 0) {
        for (int i=0; i < n; i++) {
          stdout.write("Digite o ${i + 1}° palavra: ");
          String? valor = stdin.readLineSync();

          if (valor != null && valor != '') {
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
        List<int> tamanho = [];
        lista.forEach((palavra) => tamanho.add(palavra.length));
        for (int i = 0; i<lista.length; i++){
          print("Texto: ${lista[i]} | Tamanho ${tamanho[i]}");
        }
      }

    } else if (opcao == 3) {
      print("Valores na lista: ");
      lista.forEach((numero) => print("$numero"));
      print("");
    } else if (opcao == 4) {
      print("\nAdeus!");
      break;
    } else {
      print("\nValor inválido\n");
    }
  }
}