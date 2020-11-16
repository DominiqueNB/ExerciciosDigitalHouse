import UIKit



class Pessoa {
    let necessitaAcompanhante: Bool
    let temPreferencia: Bool
    
    init(necessitaAcompanhante: Bool, temPreferencia: Bool) {
        self.necessitaAcompanhante = necessitaAcompanhante
        self.temPreferencia = temPreferencia
    }
}
class Crianca: Pessoa {
    override init(necessitaAcompanhante: Bool, temPreferencia: Bool) {
        super.init(necessitaAcompanhante: true, temPreferencia: false)
    }
}
class Adulto: Pessoa {
    override init(necessitaAcompanhante: Bool, temPreferencia: Bool) {
        super.init(necessitaAcompanhante: false, temPreferencia: false)
    }
}
class Idoso: Pessoa {
    override init(necessitaAcompanhante: Bool, temPreferencia: Bool) {
        super.init(necessitaAcompanhante: false, temPreferencia: true)
    }
}

class Elevador {
    var andarAtual: Int
    let totalDeAndares: Int
    let capacidade: Int
    var presentes: Int
    
    init(andarAtual: Int, totalDeAndares: Int, capacidade: Int, presentes: Int) {
        self.andarAtual = 0
        self.totalDeAndares = 12
        self.capacidade = 8
        self.presentes = 0
    }
    
    func calculaNumeroDePessoas(pessoa: Pessoa) -> Int {
        var quantidade = 0
        if pessoa.temPreferencia {
            return 1
        }
        if pessoa.necessitaAcompanhante {
            quantidade += 2
        }
    }
    
    func entra(pessoa: Pessoa) {
        if quantidade <= capacidade {
            presentes = quantidade + presentes
        } else {
            var diferenca = presentes - capacidade
            quantidade += diferenca
        }
    }
    
    func sai(quantidade: Int, pessoa: Pessoa){
        if presentes > 0 {
            presentes = presentes - quantidade
        }
    }
    
    func sobe(andar: Int){
        if andar > andarAtual && andarAtual != 12 {
            andarAtual = andar
        }
    }
    
    func desce(andar: Int){
        if andar < andarAtual && andarAtual != 0{
            andarAtual = andar
        }
    }
}

var thissenkrup = Elevador(andarAtual: 0, totalDeAndares: 12, capacidade: 8, presentes: 0)
thissenkrup.entra(arrayFila: arrayFila)
print(thissenkrup.presentes)
