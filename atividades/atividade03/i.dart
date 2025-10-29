// 9. Filtragem de Emails Válidos (Regra Simples)
// Dada uma lista de strings que supostamente são endereços
// de email, filtre e colete em uma nova lista apenas os emails
// que contêm exatamente um caractere '@' e terminam com ".com".

import 'dart:io';
void main () {
  List<String> lista = [];
  while (true) {
    stdout.write("\n1. Adicionar email\n2. Verificar emails válidos"
    "\n3. Ver lista\n4. Sair\nResposta: ");
    String? inputO = stdin.readLineSync();
    print("");
    int? opcao = (inputO != null && inputO.isNotEmpty) ? int.parse(inputO) : null;

    if (opcao == 1) {
      stdout.write("Digite o email: ");
      String? inputEmail = stdin.readLineSync();
      String? email = (inputEmail != null && inputEmail.trim().isNotEmpty)? inputEmail.toString() : null;
      if (email != null) {
        lista.add(email);
      } else {
        print("Email inválido");
      }
    } else if (opcao == 2) {
      if (lista.length > 0) {
        List<String> filtro = lista.where((email) => email.contains('@') && email.endsWith('.com')).toList();
        print("Emails válidos: ");
        filtro.forEach((email) => stdout.write("$email "));
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