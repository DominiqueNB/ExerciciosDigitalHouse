import UIKit

//- Um vendedor de loja e possui nome, idade e cpf, saldo em conta
//    - vende em sua loja ternos, vestidos e bonés
//    - definir um método vender (quantidadeDePecas: Int, tipoDePeca: String).
//- Cada terno custa 400 reais,
//   - caso o cliente compre 3 ou mais ternos, ele recebe 50 de desconto para cada terno.
//- Cada vestido custa 900 reais,
//   - caso o cliente compre 5 vestidos ele ganha um véu de noiva (que custa 250 reais) de brinde.
//- Cada boné custa 50 reais, e para cada 2 bonés vendidos, o terceiro é grátis, logo não haverá lucro.
//- Encapsule todos os métodos necessários.
//- O vendedor é o dono da loja

class Vendedor {
    var nome: String
    var idade: Int
    var cpf: String
    private var saldoEmConta: Double
    var quantidadeDePecas: Int
    var tipoDePecas: String
    var valorDaCompra: Double = 0
    
    init(nome: String, idade: Int, cpf: String, saldoEmConta: Double, quantidadeDePecas: Int, tipoDePecas: String) {
        self.nome = nome
        self.idade = idade
        self.cpf = cpf
        self.saldoEmConta = saldoEmConta
        self.quantidadeDePecas = quantidadeDePecas
        self.tipoDePecas = tipoDePecas
    }
    
    func vender(quantidadeDePecas: Int, tipoDePecas: String) -> Double {
        let terno: String = "terno"
        let vestido: String = "vestido"
        let bone: String = "bone"
        if tipoDePecas == terno {
            var valorDoTerno: Int = 400
            valorDaCompra = Double(quantidadeDePecas) * Double(valorDoTerno)
            if quantidadeDePecas >= 3 {
                valorDoTerno = 350
                valorDaCompra = Double(quantidadeDePecas) * Double(valorDoTerno)
            }
        } 
        if tipoDePecas == vestido {
            let valorDoVestido: Int = 900
           valorDaCompra = Double(quantidadeDePecas) * Double(valorDoVestido)
           if quantidadeDePecas >= 5 {
                print("Parabéns! Você ganhou de presente um véu!")
                valorDaCompra -= 250
            }
        } 
        if tipoDePecas == bone {
            let valorDoBone: Int = 50
            valorDaCompra = Double(quantidadeDePecas) * Double(valorDoBone)
            if quantidadeDePecas >= 2 {
                print("Parabéns! Você ganhou de presente um boné!")
                valorDaCompra -= Double(Int(quantidadeDePecas / 2)) * 50 //a cada 2 peças vendidas subtrai 50 reais do brinde, ao converter para int arredonda mas a var só aceita double
            }
        } 
        saldoEmConta += valorDaCompra
        return saldoEmConta
    }
    
    func getSaldo() -> Double {
        return saldoEmConta 
    }
    
    func setSaldo(valorDaCompra: Double) {
        return saldoEmConta += valorDaCompra
    }
}

let joao = Vendedor(nome: "João", idade: 30, cpf: "12345678999", saldoEmConta: 0, quantidadeDePecas: 3, tipoDePecas: "ternos")
let marcelo = Vendedor(nome: "Marcelo", idade: 30, cpf: "12345678999", saldoEmConta: 0, quantidadeDePecas: 5, tipoDePecas: "vestido")
let marcos = Vendedor(nome: "Marcos", idade: 30, cpf: "12345678999", saldoEmConta: 0, quantidadeDePecas: 3, tipoDePecas: "bone")
let jorge = Vendedor(nome: "Jorge", idade: 30, cpf: "12345678999", saldoEmConta: 0, quantidadeDePecas: 2, tipoDePecas: "bone")
let ulisses = Vendedor(nome: "Ulisses", idade: 30, cpf: "12345678999", saldoEmConta: 0, quantidadeDePecas: 6, tipoDePecas: "bone")

print("João: ", joao.vender(quantidadeDePecas: 3, tipoDePecas: "terno"))
print("João: ", joao.vender(quantidadeDePecas: 1, tipoDePecas: "terno"))
print("Marcelo: ", marcelo.vender(quantidadeDePecas: 5, tipoDePecas: "vestido"))
print("Marcelo: ", marcelo.vender(quantidadeDePecas: 1, tipoDePecas: "vestido"))
print("Marcos: ", marcos.vender(quantidadeDePecas: 3, tipoDePecas: "bone"))
print("Jorge: ", jorge.vender(quantidadeDePecas: 2, tipoDePecas: "bone"))
print("Ulisses: ", ulisses.vender(quantidadeDePecas: 6, tipoDePecas: "bone"))
