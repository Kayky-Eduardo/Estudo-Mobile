// 7. Criação de Frase com Filtro
// Dada uma lista de strings, crie uma única string (frase)
// concatenando apenas as palavras que terminam com
// a letra 'R' (maiúscula ou minúscula).
// As palavras devem ser separadas por um espaço na frase final.

import 'dart:io';
void main () {
  List<String> lista = [];
  while (true) {
    stdout.write("\n1. Adicionar palavras\n2. Filtrar"
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
        List<String> filtro = lista.where((palavra) =>
        palavra[palavra.length - 1] == 'r' || palavra[palavra.length - 1] == 'R').toList();
        int numero_encontrado = filtro.length;
        String frase = '';
        print(filtro);
        if (filtro.length != 0) {
          filtro.forEach((palavra) => frase += "$palavra ");  
          print("Número de palavras encontradas: $numero_encontrado");
          print("Frase formada: $frase");
        } else {
          print("Nenhuma palavra encontrada!");
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