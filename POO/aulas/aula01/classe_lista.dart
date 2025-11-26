import 'dart:io';

class Compromisso {
  String titulo;
  String data;
  String hora;
  String descricao;

  Compromisso({
    required this.titulo,
    required this.data,
    required this.hora,
    required this.descricao
  });

  // override sobrescreve o métodotoString, utilizando para exibição
  @override
  String toString() {
    return "Titulo: $titulo | Data: $data | Hora: $hora | Descrição: $descricao";
  }
}

class Agenda {
  List<Compromisso> compromissos = [];

  void adicionarCompromisso(Compromisso compromisso) {
    compromissos.add(compromisso);
    print('\nCompromisso adicionado com sucesso!\n');
  }

  void listarCompromissos() {
    if (compromissos.isEmpty) {
      print("\nNenhum compromisso cadastro.\n");
    } else {
      print('\nLista de Compromissos: ');
      for (int i = 0; i < compromissos.length; i++) {
        print("${i + 1}. ${compromissos[i]}");
      }
    }
  }
}

String lerEntrada(String mensagem) {
  String? entrada;
  do {
    stdout.write(mensagem);
    entrada = stdin.readLineSync();

    if (entrada == null || entrada.trim().isEmpty) {
      print("Entrada inválida. Por favor, informe um valor.");
    }
  } while (entrada == null || entrada.toLowerCase().isEmpty);
  return entrada.trim();
}

String lerData() {
  String data;
  RegExp exp = RegExp(r'^\d{2}-\d{2}-\d{4}$');

  do {
    data = lerEntrada('Data (DD-MM-YYYY): ');
    if (!exp.hasMatch(data)) {
      print("Formato inválido! Use DD-MM-YYYY, Ex: 15-05-2025");
    }
  } while (!exp.hasMatch(data));
  
  return data;
}

String lerHora() {
  String hora;
  RegExp exp = RegExp(r'^\d{2}:\d{2}$');

  do {
    hora = lerEntrada('Hora (HH:MM): ');
    if (!exp.hasMatch(hora)) {
      print("Formato inválido! Use HH:MM. Ex: 10:10");
    }
  } while (!exp.hasMatch(hora));

  return hora;
}

void main() {
  Agenda agenda = Agenda();
  int opcao = 0;

  do {
    print('1 - Adicionar compromisso');
    print('2 - Listar compromissos');
    print('3 - Sair');
    stdout.write("Escolha uma opção: ");
    String? entradaOpcao = stdin.readLineSync();
    opcao = int.tryParse(entradaOpcao ?? '') ?? 0;

    switch (opcao) {
      case 1: 
        print("Novo compromisso");
        String titulo = lerEntrada('Título: ');
        String data = lerData();
        String hora = lerHora();
        String descricao = lerEntrada("Descrição: ");

        Compromisso novo = Compromisso(
          titulo: titulo,
          data: data,
          hora: hora,
          descricao: descricao
        );

        agenda.adicionarCompromisso(novo);
        break;
      
      case 2:
        agenda.listarCompromissos();
        break;
      
      case 3:
        print('\nEncerrando o programa...');
        break;
      
      default:
        print("\nOpção inválida. Tente novamente.");
    }
  } while (opcao != 3);
}