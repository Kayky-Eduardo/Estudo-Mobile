void main() {
  Map<String, int> meuMap = {'a': 1, 'b': 2, 'c': 3, 'd': 4};

  print('Varredura com o método reduce()');

  dynamic somatorio = meuMap.values.reduce((v, e) => v + e);

  /**
   * Como funciona:
   * Valor (v) - Elemento (e)
   *        1  + 2 = 3
   *        3  + 3 = 6
   *        6  + 4 = 10
   */

  print('A soma dos valores é: ${somatorio}');
}