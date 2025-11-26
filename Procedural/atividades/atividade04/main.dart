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
  Map<String, dynamic> carrinho = {}; // exemplo de como vou usar {nome : {preço: x, quantidade: y }}
  while (true) {
    stdout.write(
      "\n1. Adicionar produto"
      "\n2. Atualizar quantidade"
      "\n3. Ver carrinho"
      "\n4. Remover produto"
      "\n5. Relatório"
      "\n6. Sair"
      "\nResposta: "
    );

    String? inputO = stdin.readLineSync();
    int? opcao = (inputO != null && inputO.isNotEmpty) ? int.tryParse(inputO) : null;
    print("=" * 70);

    if (opcao == 1) {
      stdout.write('Produto: ');
      String? inputNomeProduto = stdin.readLineSync();
      String? nomeP = (inputNomeProduto != null && inputNomeProduto.isNotEmpty) ?
      inputNomeProduto.toLowerCase() : null; 
    
      stdout.write('Quantidade(estoque): ');
      String? inputEstoque = stdin.readLineSync();
      int? estoqueQ = (inputEstoque != null && inputEstoque.isNotEmpty) ? int.tryParse(inputEstoque) : null; 
        
      stdout.write('Preço(por unidade): ');
      String? inputPreco = stdin.readLineSync();
      double? preco = (inputPreco != null && inputPreco.isNotEmpty) ? double.tryParse(inputPreco) : null;

      if (estoqueQ != null && preco != null && nomeP != null
      && nomeP.trim() != '' && (preco > 0 && estoqueQ >= 0)) {
        if (!carrinho.containsKey(nomeP)) {
          carrinho['$nomeP'] = {"preço": preco, "estoque": estoqueQ};
          print("\nItem cadastrado!");
        } else {
          print("\nEste produto já está cadastrado!");
          print("Se quiser aumentar a quantidade, opção N° 2.");
        }
      } else {
        print("\nVerifique se possui algum campo preenchido de forma incorreta!");
        print("Exemplo:\nProduto: texto - Quantidade: N°s inteiros - Preço: Preço em números");
      }
    } else if (opcao == 2) {
      if (carrinho.length > 0) {

        print("Produtos no carrinho:\n");
        carrinho.forEach((produto, dados) {
          print("-" * 70);
          double subtotal = dados['estoque'] * dados['preço'];
          print('$produto - Estoque: ${dados['estoque']} - Preço: ${dados['preço']} -'
          ' Subtotal: ${subtotal.toStringAsFixed(2)}');
        });
        print("-" * 70);

        stdout.write("\nSelecione o produto: ");      
        String? inputEscolha = stdin.readLineSync();
        String? escolhaP = (inputEscolha != null && inputEscolha.isNotEmpty) ?
        inputEscolha.toLowerCase() : null;

        if (escolhaP != null && escolhaP.trim().isNotEmpty) {
          if (carrinho.containsKey(escolhaP)) {
          
            stdout.write("Nova quantidade(estoque): ");
            String? inputNovaQ = stdin.readLineSync();
            int? novaQ = (inputNovaQ != null && inputNovaQ.isNotEmpty) ? int.tryParse(inputNovaQ) : null;
            
            if (novaQ != null && novaQ >= 0) {
              carrinho[escolhaP]['estoque'] = novaQ;
            } else {
              print("Verifique o valor da quantidade!");
            }
          } else {
            print("Este produto não foi encontrado.");
          }
        }
      } else {
        print("Carrinho vazio!");
      }
    } else if (opcao == 3) {
      if (carrinho.length > 0) {
        print("Produtos no carrinho:\n");
        carrinho.forEach((produto, dados) {
          print("-" * 70);
          double subtotal = dados['estoque'] * dados['preço'];
          print('$produto - Estoque: ${dados['estoque']} - Preço: ${dados['preço']} - '
          'Subtotal: ${subtotal.toStringAsFixed(2)}');
        });
        print("-" * 70);
     
      } else {
        print("Carrinho vazio!");
        print("=" * 70);
      }

    } else if (opcao == 4) {
      if (carrinho.length > 0) {
        print("Produtos no carrinho:\n");
       
        carrinho.forEach((produto, dados) {
          print("-" * 70);
          double subtotal = dados['estoque'] * dados['preço'];
          print('$produto - Estoque: ${dados['estoque']} - Preço: ${dados['preço']} - '
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
        print("Carrinho vazio!");
        print("=" * 70);
      }
    } else if (opcao == 5) {
      num quantidadeTotal = 0;
      double valorTotal = 0;
      double media = 0;

      String produtoMaisCaro = '';
      double precoMaisCaro = 0;
      int estoqueMaisCaro = 0;
      double subtotalMaisCaro = 0;

      String produtoMaiorSubtotal = '';
      double precoMaiorSubtotal = 0;
      int estoqueMaiorSubtotal = 0;
      double maiorSubtotal = 0;

      if (carrinho.length > 0) {
        carrinho.forEach((produto, dados) {
          print("-" * 70);
          double preco = dados['preço'];
          int estoque = dados['estoque'];
          double subtotal = preco * estoque;

          valorTotal += subtotal;
          quantidadeTotal += estoque;

          if (preco > precoMaisCaro) {
            precoMaisCaro = preco;
            produtoMaisCaro = produto;
            estoqueMaisCaro = estoque;
            subtotalMaisCaro = subtotal;
          }

          if (subtotal > maiorSubtotal) {
            maiorSubtotal = subtotal;
            produtoMaiorSubtotal = produto;
            precoMaiorSubtotal = preco;
            estoqueMaiorSubtotal = estoque;
          }

          print('$produto - Estoque: $estoque - Valor: $preco - '
          'Subtotal: ${subtotal.toStringAsFixed(2)}');
        });

        if (valorTotal > 0 && quantidadeTotal > 0) {
          media = valorTotal / quantidadeTotal;
        }

        print("=" * 70);
        print("Relatório geral:");
        print("Valor total: ${valorTotal.toStringAsFixed(2)}");
        print("Quantidade total: $quantidadeTotal\n");

        stdout.write("Produto mais caro (por unidade): ");
        print("$produtoMaisCaro - Preço: ${precoMaisCaro.toStringAsFixed(2)} - "
        "Estoque: $estoqueMaisCaro - Subtotal: ${subtotalMaisCaro.toStringAsFixed(2)}\n");

        if(produtoMaiorSubtotal.isNotEmpty) {
          stdout.write("Produto com maior subtotal: ");
          print("$produtoMaiorSubtotal - Preço: ${precoMaiorSubtotal.toStringAsFixed(2)} - "
          "Estoque: $estoqueMaiorSubtotal - Subtotal: ${maiorSubtotal.toStringAsFixed(2)}\n");
        } else {
          print("Quantidade de produtos em estoque insuficiente para realizar o cálculo!\n");
        }

        if (!media.isNaN) {
          print("Média de preço: ${media.toStringAsFixed(2)}");
          print("=" * 70);
        } else {
          print("Sem média devido a quantidade em estoque");
        }

      } else {
        print("Carrinho vazio");
        print("=" * 70);
      }

    } else if (opcao == 6) {
      print("\nAdeus!");
      break;
    
    } else {
      print("\nResposta inválida\n");
    }
  }
}