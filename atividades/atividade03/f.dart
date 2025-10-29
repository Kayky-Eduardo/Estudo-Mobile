//6. Filtragem Dupla em Lista de Palavras
// Dada uma lista de palavras (strings),
// filtre e colete em uma nova lista apenas as
// palavras que satisfazem duas condições simultâneas:
// 1) o comprimento da palavra deve ser maior que 5 caracteres;
// 2) a palavra deve começar com a letra 'A'
// (maiúscula ou minúscula).

import 'dart:io';
void main () {
  List<String> lista = [];
  while (true) {
    stdout.write("\n1. Adicionar palavras\n2. Filtrar"
    "\n3. Ver lista\n4. Sair\nResposta: ");
    String? inputO = stdin.readLineSync();
    print("");
    int? opcao = (inputO != null && inputO.isNotEmpty) ? int.parse(inputO) : null;

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
        palavra.length > 5 && (palavra[0] == 'a' || palavra[0] == 'A')).toList();
        int numero_encontrado = filtro.length;
        if (filtro.length != 0) {
          print("Número de palavras encontradas: $numero_encontrado");
          print("Palavras encontradas: $filtro");
        } else {
          print("Nenhuma palavra encontrada!");
        }
      } else {
        print("Elementos insuficientes na lista");
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