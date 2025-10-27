void main() {
  String frase = 'Gal Gadot! My true love!!';

  // tamanho
  int tamanhoString = frase.length;

  String fraseMaiuscula = frase.toUpperCase();
  String fraseMinuscula = frase.toLowerCase();

  bool contemGal = frase.contains('Gal');
  bool contemBatman = frase.contains('Batman');

  // recorta parte da string (inicio, fim)
  String pedaco = frase.substring(0, 9);

  String substituida = frase.replaceAll('love', 'paixão');

  List<String> palavras = frase.split(' ');

  String comEspacos = '  Gal Gadot  ';
  String semEspacos = comEspacos.trim();

  print('frase original: $frase');
  print("=" * 70);
  print("Tamanho da frase: $tamanhoString");
  print("=" * 70);
  print("Maiúscula: $fraseMaiuscula");
  print("Minuscula: $fraseMinuscula");
  print("=" * 70);
  print("Contém 'gal'? $contemGal");
  print("Contém 'batman'? $contemBatman");
  print("=" * 70);
  print('Substring (0 a 9): $pedaco');
  print('ReplaceAll: $substituida');
  print("=" * 70);
  print("Split em palavras: $palavras");
  print("Trim antes: $comEspacos");
  print("Trim depois: $semEspacos");
  print("=" * 70);
}