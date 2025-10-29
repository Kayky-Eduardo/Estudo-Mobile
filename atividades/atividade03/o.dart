// 15. Contagem de Ocorrências de Status
// Dada uma lista de Maps, onde cada Map representa 
//uma tarefa com a chave "status" (String),
// conte e imprima o número total de tarefas
// para cada status distinto.

import 'dart:io';
void main () {
  List<String> lista_tarefa = [];
  List<String> lista_status = [];
  while (true) {
    stdout.write("\n1. Adicionar tarefa\n2. filtrar por status"
    "\n3. Ver listas\n4. Sair\nResposta: ");
    String? inputO = stdin.readLineSync();
    print("");
    int? opcao = (inputO != null && inputO.isNotEmpty) ? int.parse(inputO) : null;

    if (opcao == 1) {
      stdout.write("Digite o nome da tarefa: ");
      String? inputNome = stdin.readLineSync();
      String? nome = (inputNome != null && inputNome.trim().isNotEmpty)? inputNome : null;
      
      stdout.write("Digite o status da tarefa: ");
      String? inputStatus = stdin.readLineSync();
            
      if (nome != null && (inputStatus != null && inputStatus != '')) {
        lista_tarefa.add(nome);
        lista_status.add(inputStatus);
      } else {
        print("Erro! Verifique suas respostas!");
      }
    } else if (opcao == 2) {
      if (lista_tarefa.length > 0) {
        List<String> tipo_status = [];
        List<int> qnt_status = [];
        for (String status in lista_status) {
          if (!tipo_status.contains(status)) {
            tipo_status.add(status);
          }
        }

        for (String status in tipo_status) {
          int quantidade = lista_status.where((s) => s == status).length;
          qnt_status.add(quantidade);
        }

        print("Quantidade para cada status:\n");
        for (int i=0; i < tipo_status.length; i++) {
          print("Status: ${tipo_status[i]}\nStatus: ${qnt_status[i]}");
          print("-" * 70);
        }
      }  else {
        print("Elementos insuficientes na lista");
      }
    } else if (opcao == 3) {
      print("Valores na lista:\n");
        for (int i=0; i < lista_status.length; i++) {
          print("Tarefa: ${lista_tarefa[i]}\nStatus: ${lista_status[i]}");
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