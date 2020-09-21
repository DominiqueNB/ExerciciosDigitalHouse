import UIKit

protocol Voador {
    func Voar()
}

class Pato: Voador {
    func Voar() {
        print("Pato voando!")
    }
}

class Aviao: Voador {
    func Voar() {
        print("Avião voando!")
    }
}

class SuperHomem: Voador {
    func Voar() {
        print("Super-Homem voando!")
    }
}

class TorreDeControle {
    var voadores = [Voador]()
    
    func voamTodos () {
        for item in voadores {
            item.Voar()
        }
    }
    
    func adicionarVoador(umVoador: Voador) {
        voadores.append(umVoador)
    }
}

let pato = Pato()
let aviao = Aviao()
let superHomem = SuperHomem()

let torreDeControle = TorreDeControle()

torreDeControle.adicionarVoador(umVoador: pato)
torreDeControle.adicionarVoador(umVoador: aviao)
torreDeControle.adicionarVoador(umVoador: superHomem)

torreDeControle.voamTodos()