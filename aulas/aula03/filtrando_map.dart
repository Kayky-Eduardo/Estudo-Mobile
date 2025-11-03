void main() {
  var meuMap = {'a': 1, 'b': 2, 'c': 3};

  print('Varredura com o método map()');

  // Não confundir o método map() com o tipo Map<>
  var resultado = 
    meuMap.entries.map((entrada) => '${entrada.key}: ${entrada.value}');
  
  print(resultado.join(', ')); // saida: 'a': 1, 'b': 2, 'c': 3

  // Transformação em uma lista
  List<int> numeros = [1, 2, 3, 4, 5];
  var doubledNumbers = numeros.map((number) => number * 2);

  print(doubledNumbers);
}