void main() {
  print("Exemplo de uso do where()");

  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  List<int> numerosPares = numeros.where((num) => num % 2 == 0).toList();

  print("Nova lista: ${numerosPares}");
}