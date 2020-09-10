import UIKit

class Funcionario {
    var nome: String
    var salario: Double
    var cpf: String
    
    init(nome: String, salario: Double, cpf: String) {
        self.nome = nome
        self.salario = salario
        self.cpf = cpf
    }
    
    func calcularBonusAnual() -> Double{
        return salario
    }
}

class Programador: Funcionario {
    var plataformaDeTrabalho: String
    
    init(nome: String, salario: Double, cpf: String, plataformaDeTrabalho: String) {
        self.plataformaDeTrabalho = plataformaDeTrabalho
        super.init(nome: nome, salario: salario, cpf: cpf)
    }
    
    override func calcularBonusAnual() -> Double {
        return super.calcularBonusAnual() * 1.2 
    }
}
class Designer: Funcionario {
    var ferramentaPreferida: String
    
     init(nome: String, salario: Double, cpf: String, ferramentaPreferida: String) {
        self.ferramentaPreferida = ferramentaPreferida
        super.init(nome: nome, salario: salario, cpf: cpf)
    }
    
    override func calcularBonusAnual() -> Double {
        return super.calcularBonusAnual() * 1.15 
    }
}

let joao = Programador(nome: "João", salario: 1000, cpf: "12345678999", plataformaDeTrabalho: "iOS")
let bonusJoao = joao.calcularBonusAnual()
print(bonusJoao)

let pedro = Designer(nome: "Pedro", salario: 1000, cpf: "78945612300", ferramentaPreferida: "Photoshop")
let bonusPedro = pedro.calcularBonusAnual()
print(bonusPedro)
 