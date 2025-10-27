void main() {
  List<int> lista = [1, 2, 3, 4, 5];
  print("Lista original: $lista");
  print("Sublista gerada: ${lista.sublist(1, 3)}");

  List<String> listaVogais2 = ['u', 'a', 'o', 'i', 'e'];
  print("Lista original: $listaVogais2");
  listaVogais2.sort();
  print("Lista ordenada: $listaVogais2");

  List<int> listaInteiros2 = [1, 2, 3, 4, 5, 6];
  print("Lista original: $listaInteiros2");
  var listaInversa = listaInteiros2.reversed.toList();
  print("Lista reversa: $listaInversa");

  List<String> listaVerduras = ['couve', 'Serraia', 'Alface'];
  print("Lista original: $listaVerduras");
  listaVerduras.shuffle();
  print("Lista embaralhada: $listaVerduras");
  }