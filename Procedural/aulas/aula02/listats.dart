void main() {
  dynamic listaVazia = [];

  // inferenca de valores
  var numerosInteiros1 = [1, 2, 3, 4, 5];

  //utilizando Generics para tipar os valores

  List<int> numerosInteiros2 = [6, 7, 8, 9, 10];

  List<double> numerosDecimais = [1.1, 2.2, 3.3, 4, 5];

  List<String> listaNomes = ['John Doe', 'Jane Doe'];

  // lista de lista
  dynamic listaComListas = [
    [1, 2, 3], ['um', 'dois', 'tres']
  ];

  print('Lista vazia: $listaVazia');
  print('Lista de números inteiros 1: $numerosInteiros1');
  print('Lista de números inteiros 2: $numerosInteiros2');
  print('Lista de números decimais: $numerosDecimais');
  print('Lista de Strings: $listaNomes');
  print('Lista de Listas: $listaComListas');
}