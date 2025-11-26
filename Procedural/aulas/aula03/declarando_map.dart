void main() {
  // Declarando um map
  Map<String, dynamic> agenda = {
    'John' : {'idade': 50, 'email': 'john@example.com'},
    'Jane' : {'idade': 30, 'email': 'jane@example.com'},
  };

  Map<String, dynamic> cadastro = {
    'nome' : 'John Doe',
    'nascimento' : 1970,
    'altura' : 1.78,
    'est_civil' : 'solteiro',
    'cidade' : 'Juiz de Fora',
    'uf' : 'MG'
  };

  print('Minha agenda');
  print(agenda);

  print('Meu cadastro');
  print(cadastro);
}