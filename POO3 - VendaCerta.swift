import UIKit

// Temos uma loja de carros, o nome dela é Venda Certa. Essa loja tem um estoque de quantos carros tem no total na loja.
// No momento, eles tem 50 carros em estoque. Para sair um carro do estoque, esse carro precisa ser vendido,
// não há outro modo de retirar produtos no estoque. Esse estoque também nunca pode ficar negativo.
// A fábrica falou pra loja que se eles conseguirem vender pelo menos 5 carros de uma só vez, a fábrica vai dar 1 carro de bonificação pra loja.
// A fábrica também falou que, no momento que terminarem de vender todo estoque, a fábrica vai dar 2 carros de bonificação pra loja.

class VendaCerta {
    private var stock = 50

    func sell(_ quantity: Int) -> Int {
        if stock == 0 {
            print("Bonificação: ganharam 2 carros da fabrica!")
            stock += 2
        }
        else if quantity >= 5 {
            stock += 1
            print("Ganhou 1 carro da fabrica!")
        }
        stock -= quantity
        return stock
    }
}
let vendaCerta = VendaCerta()

print("Vende 1:", vendaCerta.sell(1))
print("Vende 5:", vendaCerta.sell(5))
print("Vende 44:", vendaCerta.sell(44))
print("Vende 2:", vendaCerta.sell(2))
print("Ao final:", vendaCerta.sell(0))
