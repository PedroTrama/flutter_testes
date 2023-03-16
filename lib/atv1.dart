/*ATIVIDADE 1 
  Jorge Yudi Saito Maruyama - 254274
  Pedro Trama Fernandes Pereira - 254344
*/

//Exercício 1: Criar classes de conta
abstract class ContaCorrente {
  String _cliente;
  double _saldo;
  ContaCorrente(this._cliente, this._saldo);

  String get cliente => _cliente;
  set cliente(String cliente) => cliente = cliente;

  double get saldo => _saldo;
  set saldo(double saldo) => saldo = saldo;

  @override
  String toString() {
    return "\tCliente: $cliente \tSaldo: $saldo";
  }
}

class ContaComum extends ContaCorrente {
  ContaComum(String cliente, double saldo) : super(cliente, saldo);
}

class ContaEspecial extends ContaCorrente {
  double _taxaDeJuros;
  ContaEspecial(String cliente, double saldo, this._taxaDeJuros)
      : super(cliente, saldo);
}

//Exercício 2: Criar classe banco para armazenamento
class Banco {
  List<ContaCorrente> _contas = [];

  ContaCorrente? buscarConta(String nomeCliente) {
    for (var conta in _contas) {
      if (conta.cliente == nomeCliente) {
        return conta;
      }
    }
    return null;
  }

//Exercício 3: Método para transferencia de dinheiro
  void transferencia(
      ContaCorrente contaOrigem, ContaCorrente contaDestino, double valor) {
    if (contaOrigem.saldo >= valor) {
      contaOrigem.saldo -= valor;
      contaDestino.saldo += valor;
      print("\nStatus: Transferência de R\$$valor realizada com sucesso :)");
    } else {
      print("\nStatus: Saldo insuficiente para realizar a transferência :(");
    }
  }
}

void main() {
//Transferencia bem sucedida
  var conta1 = ContaComum("Ulisses", 20000);
  var conta2 = ContaEspecial("Plínio", 50000, 10.5);

  var banco = Banco();
  banco._contas.addAll([conta1, conta2]);

  print("---------------------------BANCO---------------------------");
  print("Contas:");
  banco._contas.forEach((conta) => print(conta));

  var contaOrigem = banco.buscarConta("Ulisses");
  var contaDestino = banco.buscarConta("Plínio");

  if (contaOrigem != null && contaDestino != null) {
    banco.transferencia(contaOrigem, contaDestino, 5000);
  }
  print("-----------------------------------------------------------");


//Impossível de transferir
  var conta3 = ContaComum("Zambon", 1000000);
  var conta4 = ContaEspecial("Bertini", 20000, 49.9);

  var banco2 = Banco();
  banco2._contas.addAll([conta3, conta4]);
  print("\n---------------------------BANCO---------------------------");
  print("Contas:");
  banco2._contas.forEach((conta) => print(conta));


  var contaOrigem2 = banco2.buscarConta("Zambon");
  var contaDestino2 = banco2.buscarConta("Bertini");

  if (contaOrigem2 != null && contaDestino2 != null) {
    banco2.transferencia(contaOrigem2, contaDestino2, 20000000);
  }
  print("-----------------------------------------------------------");

}
