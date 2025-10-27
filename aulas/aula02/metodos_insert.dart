void main() {
  List<String> listaArtistas = ['Fernanda Torres', 'Loiro José', 'Raul gil'];
  print("Lista original: $listaArtistas");
  listaArtistas.insert(2, 'Grande Otelo');
  print("Lista nova: $listaArtistas");

  List<int> listaInteiros = [1, 2, 3];
  print("Lista original: $listaInteiros");
  listaInteiros.insertAll(2, [1, 2]);
  print("Lista nova: $listaInteiros");

  List<String> listaLetras = ['a', 'b', 'c', 'd', 'e', 'a', 'b', 'c', 'd', 'e'];
  print(listaLetras);
  print("A 1° ocorrência da vogal i: Índice ${listaLetras.indexOf('i')}");

List<String> listaCarros = ['Gol', 'Fusca', 'Chega'];
  print(listaCarros);
  print("A 1° ocorrência do carro i: Índice ${listaCarros.lastIndexOf('gol')}");

}