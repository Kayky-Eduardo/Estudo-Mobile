/*
ver disciplinas
Ver aulas dadas

*/
import 'dart:io';

verificacaoMap(registro) {
  if (registro.length > 0) {
    return true;
  } else {
    print("registro vazia!");
    return false;
  }
}

void exibirLista(Map registro) {
  if (verificacaoMap(registro)) {
    registro.forEach((Pessoa, dados) {
      print("-" * 70);
      double subtotal = dados['estoque'] * dados['preço'];
      print('$Pessoa - Estoque: ${dados['estoque']} - Preço: ${dados['preço']} - '
      'Subtotal: ${subtotal.toStringAsFixed(2)}');
    });
    print("-" * 70);
  }
}

int menu() {
    stdout.write(
    "\n1. Adicionar Presença"
    "\n2. Atualizar quantidade"
    "\n3. Ver lista de presença"
    "\n4. Remover livro"
    "\n5. Relatório"
    "\n6. Sair"
    "\nResposta: "
  );

  String? inputO = stdin.readLineSync();
  int? opcao = (inputO != null && inputO.isNotEmpty) ? int.tryParse(inputO) : null;
  print("=" * 70);
  if (opcao != null && !opcao.isNaN) {
    return opcao;
  } else {
    return 9999;
  }
}

void main () {
  Map<String, dynamic> registro = {}; // exemplo de como vou usar {nome : {tema: z, preço: x, quantidade: y }}

  while (true) {
    int opcao = menu();

    if (opcao == 1) {

    } else if (opcao == 2) {

    } else if (opcao == 3) {

    } else if (opcao == 4) {

    } else if (opcao == 5) {
 

    } else if (opcao == 6) {
      print("\nAdeus!");
      break;
    
    } else {
      print("\nResposta inválida\n");
    }
  }
}