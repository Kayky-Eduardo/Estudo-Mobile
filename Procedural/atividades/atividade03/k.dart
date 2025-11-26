//11. Seleção de Registros por Idade Mínima
// Dada uma lista_nome de Maps, onde cada Map representa um usuário
// com as chaves "nome" (String) e "idade" (int), filtre e
// colete em uma nova lista_nome apenas os Maps dos usuários 
//que são maiores de 18 anos.


import 'dart:io';
void main () {
  List<String> lista_nome = [];
  List<int> lista_idade = [];
  while (true) {
    stdout.write("\n1. Adicionar usuario\n2. Verificar maiores"
    "\n3. Ver listas\n4. Sair\nResposta: ");
    String? inputO = stdin.readLineSync();
    print("");
    int? opcao = (inputO != null && inputO.isNotEmpty) ? int.parse(inputO) : null;

    if (opcao == 1) {
      stdout.write("Digite o nome do usuario(a): ");
      String? inputNome = stdin.readLineSync();
      String? nome = (inputNome != null && inputNome.trim().isNotEmpty)? inputNome : null;
      
      stdout.write("Digite a idade(anos) do usuario(a): ");
      String? inputIdade = stdin.readLineSync();
      int? idade = (inputIdade != null && inputIdade.isNotEmpty)? int.tryParse(inputIdade) : null;
      
      if (nome != null && (idade != null && idade >= 0)) {
        lista_nome.add(nome);
        lista_idade.add(idade);
      } else {
        print("nome ou idade inválido");
      }
    } else if (opcao == 2) {
      if (lista_nome.length > 0) {
        List<String> filtro_nome = [];
        List<int> filtro_idade = [];
        for (int i=0; i < lista_idade.length; i++) {
          if (lista_idade[i] > 18) {
            filtro_nome.add(lista_nome[i]);
            filtro_idade.add(lista_idade[i]);
          }
        }
        print("Maiores de idade: ");
        for (int i=0; i < filtro_idade.length; i++) {
          print("Nome: ${filtro_nome[i]} | idade: ${filtro_idade[i]}");
        }
      } else {
        print("Elementos insuficientes na lista");
      }
    } else if (opcao == 3) {
      print("Valores na lista: ");
        for (int i=0; i < lista_idade.length; i++) {
          print("Nome: ${lista_nome[i]}\nIdade: ${lista_idade[i]}");
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