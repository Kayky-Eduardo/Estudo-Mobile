void main() {
  double media = calcularMedia(10, 10, 10, 10);
  double divisao = calcularDivisao(10, 5);

  print("Média Aritmética");
  print("A média é: $media");
  print("A divisão é: $divisao");

  double percent = 5;
  double valor = 100;
  double percentual = calcularParcentagem(percent, valor);

  print("$percent% de $valor = $percentual");
}

double calcularMedia(double n1, double n2, double n3, double n4)=> (n1 + n2 + n3 + n4) / 4;

double calcularDivisao(double n1, double n2) {
  if (n2 == 0) {
    print("Divisão por zero é impossível");
    return 0;
  }
  return n1 /n2;
}

double calcularParcentagem(double percent, double valor) => (percent * valor) / 100;