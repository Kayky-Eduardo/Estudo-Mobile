class Conta {
  late String titular;
  late double saldo;

  Conta(String titular, double saldoInicial) {
    this.titular = titular;
    this.saldo = saldoInicial;
  }

  void depositar(double valor) {
    saldo += valor;
    print("Depósito de $valor realizado. Novo saldo: $saldo");
    print('-' * 70);
  }

  void sacar(double valor) {
    if (saldo >= valor) {
      saldo -= valor;
      print("Saque de $valor realizado. Novo saldo: $saldo");
      print('-' * 70);
    } else {
      print("Saldo insuficiente. Operação não realizada.");
      print('-' * 70);
    }
  }

  void exibirDados() {
    print('-' * 70);
    print("Saldo atual: $saldo");
    print('-' * 70);
  }
}

void main() {
  Conta cliente1 = Conta("John", 1000.0);

  cliente1.exibirDados();
  cliente1.depositar(500.0);
  cliente1.sacar(200.0);
  cliente1.exibirDados();
}