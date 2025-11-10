import 'dart:io';

void enviarEmail(String destinatario, String assunto, String msg) {
  print('Enviando email para: $destinatario');
  print("Assunto: $assunto");
  print("Corpo: $msg");
}

void main() {
  print("\nExemplo de função void com validação de destinatário");
  
  while(true) {
    stdout.write("Digite o destinatário: ");
    String destinatario = (stdin.readLineSync() ?? '').trim();

    if (destinatario.isEmpty) {
      print("Erro: destinatário não pode ficar vazio! tente novamente.\n");
      continue;
    }
    
    stdout.write("Digite o assunto");
    String assunto = (stdin.readLineSync() ?? '').trim();

    if (assunto.isEmpty) { assunto = "Sem assunto";}

    stdout.write("Digite o corpo da mensagem: ");
    String msg = (stdin.readLineSync() ?? '').trim();

    if (msg.isEmpty) { msg = "mensagem vazia"; }
    
    enviarEmail(destinatario, assunto, msg);

    while (true) {
      stdout.write("Deseja enviar outro email? (s/n): ");
      String resposta = (stdin.readLineSync() ?? '').trim().toLowerCase();

      if (resposta == 's') {
        break;
      } else if (resposta == 'n') {
        print("Encerrando o programa...");
        return;
      } else {
        print("Resposta inválida! DIgite 's' para sim ou 'n' para não");
      }
    }
    print('');
  }


}