// Projeto 2 – Simulador de Carrinho de Compras(Kayky)
// O segundo projeto consiste na criação de um simulador de carrinho de compras,
// voltado à prática da manipulação de carrinhos e mapas em conjunto.
// O sistema deve utilizar uma carrinho de mapas (List<Map<String, dynamic>>)
// para representar os produtos adicionados ao carrinho,
// sendo que cada produto deve conter as chaves ‘nome’, ‘preco’ e ‘quantidade’.
// O programa deve oferecer opções para adicionar novos produtos,
// atualizar a quantidade de um item existente,

// remover um produto pelo nome e exibir um resumo detalhado com o subtotal de cada item,

// o total geral e a quantidade total de produtos.

// Todas as operações de modificação ou leitura devem ser realizadas acessando diretamente as chaves do mapa,
// como produto['preco'] ou produto['quantidade']. O sistema deve validar entradas incorretas,
// impedindo valores nulos ou negativos,
// e empregar operadores de null safety (??, ?., !) para evitar erros de execução.
// Estruturas de repetição devem ser utilizadas para controlar o menu principal,
// e condicionais, para as decisões de fluxo. Como desafio adicional,

// o aluno pode implementar funções que calculem a média de preços dos produtos e identifiquem o item mais caro do carrinho,
// reforçando o domínio da estrutura Map.
import 'dart:io';

void main () {
  Map<String, dynamic> carrinho = {}; // exemplo de como vou usar {nome : {valor: x, quantidade: y }}
  while (true) {
    stdout.write("\n1. Adicionar produto\n2. Atualizar quantidade de produto"
    "\n3. Ver carrinho\n4. Remover produto\n5. Relatório\n6. Sair\nResposta: ");

    String? inputO = stdin.readLineSync();
    int? opcao = (inputO != null && inputO.isNotEmpty) ? int.parse(inputO) : null;
    print("=" * 70);

    if (opcao == 1) {
      stdout.write('Produto: ');
      String? inputNomeProduto = stdin.readLineSync();
      String? nomeP = (inputNomeProduto != null && inputNomeProduto.isNotEmpty) ?
      inputNomeProduto.toLowerCase() : null; 
    
      stdout.write('Quantidade(estoque): ');
      String? inputQuantidade = stdin.readLineSync();
      int? estoqueQ = (inputQuantidade != null && inputQuantidade.isNotEmpty) ? int.tryParse(inputQuantidade) : null; 
        
      stdout.write('Valor(por unidade): ');
      String? inputValor = stdin.readLineSync();
      double? produtoV = (inputValor != null && inputValor.isNotEmpty) ? double.tryParse(inputValor) : null;

      if (estoqueQ != null && produtoV != null && nomeP != null
      && nomeP.trim() != '' && (produtoV > 0 && estoqueQ >= 0))
      {
        carrinho['$nomeP'] = {"valor": produtoV, "estoque": estoqueQ};
        print("\nItem cadastrado!");
      } else
      {
        print("\nVerifique se possui algum valor preenchido de forma incorreta!");
        print("Produto: texto - Quantidade: N°s inteiros - Valor: Preço em números");
      }
    } else if (opcao == 2) {
      if (carrinho.length > 0) {

        print("Produtos no carrinho:\n");
        carrinho.forEach((produto, dados) {
          print("-" * 70);
          double subtotal = dados['estoque'] * dados['valor'];
          print('$produto - Estoque: ${dados['estoque']} - Valor: ${dados['valor']} -'
          ' Subtotal: ${subtotal.toStringAsFixed(2)}');
        });
        print("-" * 70);

        stdout.write("\nSelecione o produto: ");      
        String? inputEscolha = stdin.readLineSync();
        String? escolhaP = (inputEscolha != null && inputEscolha.isNotEmpty) ?
        inputEscolha.toLowerCase() : null;

        if (escolhaP != null && escolhaP.trim().isNotEmpty) {
          if (carrinho.containsKey(escolhaP)) {
          
            stdout.write("Nova quantidade: ");
            String? inputNovaQ = stdin.readLineSync();
            int? novaQ = (inputNovaQ != null && inputNovaQ.isNotEmpty) ? int.tryParse(inputNovaQ) : null;
            
            if (novaQ != null && novaQ >= 0) {
              print("$escolhaP:\n${carrinho[escolhaP]}");
              carrinho[escolhaP]['estoque'] = novaQ;
            }
          } else {
            print("Este produto não foi encontrado.");
          }
        }
      } else {
        print("Lista vazia!");
      }
    } else if (opcao == 3) {
      if (carrinho.length > 0) {
        print("Produtos no carrinho:\n");
        carrinho.forEach((produto, dados) {
          print("-" * 70);
          double subtotal = dados['estoque'] * dados['valor'];
          print('$produto - Estoque: ${dados['estoque']} - Valor: ${dados['valor']} - '
          'Subtotal: ${subtotal.toStringAsFixed(2)}');
        });
        print("-" * 70);
     
      } else {
        print("Lista vazia!");
      }

    } else if (opcao == 4) {
      if (carrinho.length > 0) {
        print("Produtos no carrinho:\n");
       
        carrinho.forEach((produto, dados) {
          print("-" * 70);
          double subtotal = dados['estoque'] * dados['valor'];
          print('$produto - Estoque: ${dados['estoque']} - Valor: ${dados['valor']} - '
          'Subtotal: ${subtotal.toStringAsFixed(2)}');
        });
        print("-" * 70);

        stdout.write("\nSelecione o produto: ");
        String? inputEscolha = stdin.readLineSync();
        String? escolhaP = (inputEscolha != null && inputEscolha.isNotEmpty) ?
        inputEscolha.toLowerCase() : null;

        if (escolhaP != null && escolhaP.trim().isNotEmpty) {
          if (carrinho.containsKey(escolhaP)) {
            carrinho.remove(escolhaP);
            print("\nRemovido com sucesso!");
          } else {
            print("\nProduto não encontrado!");
          }
        }
      } else {
        print("Lista vazia!");
      }
    } else if (opcao == 5) {
      num quantidadeTotal = 0;
      double valorTotal = 0;
      // utilizo uma lista para guardar as informações do produto mais caro
      List<String> maisCaro = [];
      // um número fora da lista para fazer a comparação de forma mais rapida
      double maisCaroNum = 0;
      double media = 0;

      if (carrinho.length > 0) {
        carrinho.forEach((produto, dados) {
          print("-" * 70);
          double subtotal = dados['estoque'] * dados['valor'];
          valorTotal += subtotal;
          quantidadeTotal += dados['estoque'];
          
          // validação para verificar se este produto tem o valor mais caro que o ultimo
          if (dados['valor'] > maisCaroNum) {
            // se tiver eu troco o valor do número mais caro e esvazio a lista
            maisCaroNum = dados['valor'];
            maisCaro.clear();
            double subtotalMaisCaro = dados['valor'] * dados['estoque'];
            maisCaro = [produto, '${dados["valor"]}', '${dados["estoque"]}', '$subtotalMaisCaro'];
          }
          
          print('$produto - Estoque: ${dados['estoque']} - Valor: ${dados['valor']} -'
          ' Subtotal: ${subtotal.toStringAsFixed(2)}');
        
        });

        media = valorTotal / quantidadeTotal;

        print("=" * 70);
        print("Valor total: $valorTotal");
        print("Quantidade total: $quantidadeTotal");
        print("Produto mais caro(por unidade): ${maisCaro[0]} - valor: ${maisCaro[1]} - "
        "Estoque: ${maisCaro[2]} - Subtotal: ${maisCaro[3]}");
        print("Média de preço: ${media.toStringAsFixed(2)}");
        print("=" * 70);
      
      } else {
        print("Carrinho vazio");
      }

    } else if (opcao == 6) {
      print("\nAdeus!");
      break;
    
    } else {
      print("\nResposta inválida\n");
    }
  }
}