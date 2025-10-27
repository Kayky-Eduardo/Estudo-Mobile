void main(){
  print('-');
  print('LISTA DE MÉTODOS PARA LISTAS');
  print('=' * 70);

  List<int> listaInteiros = [1, 2, 3];
  print("Lista original: $listaInteiros");
  listaInteiros.add(4);
  print("Lista nova; $listaInteiros");

  List<String> listaFrutas = ['banana', 'maçã', 'pêra'];
  print("Lista original: $listaFrutas");
  listaFrutas.addAll(['uva', 'goiaba']);
  print("Lista nova: $listaFrutas");

  List<String> listaNomes = ['joao', 'maria', 'José'];
  print("Lista original: $listaNomes");
  listaFrutas.remove('joao');
  print("Lista nova: $listaNomes");

  List<double> listaDouble = [1.1, 2.2, 3.3];
  print("Lista original: $listaDouble");
  listaFrutas.removeAt(1);
  print("Lista nova: $listaDouble");
}