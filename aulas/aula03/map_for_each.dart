void main() {
  Map<String, int> meuMap = {'a': 1, 'b': 2, 'c': 3};

  print('Varredura com ForEach');
  meuMap.forEach((chave, valor) {
    print('$chave: $valor');
  });
}