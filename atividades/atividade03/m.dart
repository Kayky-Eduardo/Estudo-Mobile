// 13. Mapeamento de Mapas para Strings Formatadas
// Dada a lista de Maps do exercício anterior (Produtos),
// crie uma nova lista de strings onde cada string é um
// resumo formatado do produto, no formato:
// "Produto [Nome] - Estoque: [Estoque]".

import 'dart:io';
void main () {
  List<String> lista_nome = [];
  List<int> lista_estoque = [];
  List<bool> lista_ativo = [];
  while (true) {
    stdout.write("\n1. Adicionar produto\n2. filtrar"
    "\n3. Ver listas\n4. Sair\nResposta: ");
    String? inputO = stdin.readLineSync();
    print("");
    int? opcao = (inputO != null && inputO.isNotEmpty) ? int.parse(inputO) : null;

    if (opcao == 1) {
      stdout.write("Digite o nome do produto: ");
      String? inputNome = stdin.readLineSync();
      String? nome = (inputNome != null && inputNome.trim().isNotEmpty)? inputNome : null;
      
      stdout.write("Digite a quantidade em estoque: ");
      String? inputEstoque = stdin.readLineSync();
      int? estoque = (inputEstoque != null && inputEstoque.isNotEmpty)? int.tryParse(inputEstoque) : null;
            
      stdout.write("Ativo(true/false): ");
      String? inputAtivo = stdin.readLineSync();
      bool? ativo = (inputAtivo != null && inputAtivo.isNotEmpty)? bool.tryParse(inputAtivo) : null;
      
      if (nome != null && ativo != null && (estoque != null && estoque >= 0)) {
        lista_nome.add(nome);
        lista_estoque.add(estoque);
        lista_ativo.add(ativo);
      } else {
        print("Erro! Verifique suas respostas.");
      }
    } else if (opcao == 2) {
      if (lista_nome.length > 0) {
        List<String> lista_string = [];
        String string_formatada = '';
        for (int i=0; i < lista_estoque.length; i++) {
          if (lista_ativo[i] == true) {
            string_formatada = "Produto: ${lista_nome[i]} - Estoque: ${lista_estoque[i]}";
            lista_string.add(string_formatada);
          }
        }
        print("Lista formatada e Filtrada por ativo: ");
        lista_string.forEach((string) => print(string));
      } else {
        print("Elementos insuficientes na lista");
      }
    } else if (opcao == 3) {
      print("Valores na lista:\n");
      print("-" * 70);
      for (int i=0; i < lista_estoque.length; i++) {
        print("Nome: ${lista_nome[i]}\nEstoque: ${lista_estoque[i]}\nAtivo: ${lista_ativo[i]}");
        print("-" * 70);
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