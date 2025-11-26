import 'dart:io';

class Aluno {
  String matricula;
  String nome;
  Map<String, double> notas;

  Aluno({
    required this.matricula,
    required this.nome,
    required this.notas,
  });

  @override
  String toString() {
    double media = notas.values.reduce((a, b) => a + b) / notas.length;

    return '''
Boletim Escolar
----------------------------------------------------------
Matrícula: $matricula
Nome: $nome
Notas:
      1º Bimestre: ${notas['n1']?.toStringAsFixed(2)}
      2º Bimestre: ${notas['n2']?.toStringAsFixed(2)}
      3º Bimestre: ${notas['n3']?.toStringAsFixed(2)}
      4º Bimestre: ${notas['n4']?.toStringAsFixed(2)}
-----------------------------------------------------------
Média Final: ${media.toStringAsFixed(2)}
Situação: ${media >= 6 ? 'Aprovado' : 'Reprovado'}
''';
  }
}

void main() {
  List<Aluno> alunos = [];
  String opcao;

  do {
    stdout.write("\nDigite a matrícula do aluno: ");
    String matricula = stdin.readLineSync()!;

    stdout.write("\nDigite o nome do aluno: ");
    String nome = stdin.readLineSync()!;

    Map<String, double> notas = {};

    for (var i = 0; i < 4; i++) {
      stdout.write("\nDigite a nota do ${i}º bimestre: ");
      
      double nota = double.parse(stdin.readLineSync()!);
      notas['n$i'] = nota;
    }

    alunos.add(Aluno(
      matricula: matricula,
      nome: nome,
      notas: notas
    ));

    print("\nAluno cadastrado com sucesso!");

    stdout.write("Deseja cadastrar outro aluno? (S/N) ");
    opcao = stdin.readLineSync()!.toUpperCase();
  } while (opcao == '5');

  print("\n============ LISTA DE ALUNOS CASTRADOS =============\n");
  for (Aluno aluno in alunos) {
    print(aluno.toString());
  }
}