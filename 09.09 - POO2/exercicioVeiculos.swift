import UIKit

class Veiculo{
    var cor: String
    var preco: Double
    var qtdPassageiros: Int
    var qtdCombustivel: Double
    
    init(cor: String, preco: Double, qtdPassageiros: Int, qtdCombustivel: Double){
        self.cor = cor
        self.preco = preco
        self.qtdPassageiros = qtdPassageiros
        self.qtdCombustivel = qtdCombustivel
    }
    
    func obterQtdCombustivel(distancia: Double) -> Double{
        return qtdCombustivel * Double(qtdPassageiros)
    }
}

class Carro: Veiculo{
    var tamanhoRodas: Double
    
    
    init(cor: String, preco: Double, qtdPassageiros: Int,qtdCombustivel: Double, tamanhoRodas: Double) {
        self.tamanhoRodas = tamanhoRodas
        super.init(cor: cor, preco: preco, qtdPassageiros: qtdPassageiros, qtdCombustivel: qtdCombustivel)
    }
    override func obterQtdCombustivel(distancia: Double) -> Double {
        let qtdCombustivel = super.obterQtdCombustivel(distancia: distancia)
        return qtdCombustivel * Double(tamanhoRodas)
    }
}

class Aviao: Veiculo{
    var piloto: String
    var companhiaAerea: String
    
    init(cor: String, preco: Double, qtdPassageiros: Int,qtdCombustivel: Double, piloto: String, companhiaAerea: String) {
    self.piloto = piloto
    self.companhiaAerea = companhiaAerea
    super.init(cor: cor, preco: preco, qtdPassageiros: qtdPassageiros, qtdCombustivel: qtdCombustivel)
    }
    
    override func obterQtdCombustivel(distancia: Double) -> Double {
        return Double(qtdPassageiros) * distancia
    }
}

let siena = Carro(cor: "branco", preco: 1000, qtdPassageiros: 5, qtdCombustivel: 45, tamanhoRodas: 20.4)
print("A quantidade de combustivel do carro é: \(siena.obterQtdCombustivel(distancia: 20))")

let air = Aviao(cor: "preto", preco: 1000, qtdPassageiros: 100, qtdCombustivel: 200, piloto: "Nathalle Figueira", companhiaAerea: "Azul")
print("A quantidade de combustivel do veículo é: \(air.obterQtdCombustivel(distancia: 1000))")
