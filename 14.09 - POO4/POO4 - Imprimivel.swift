import Foundation

protocol Imprimivel {
    func imprimir() {
    }
}

class Contrato: Imprimivel {
    func imprimir() {
    print("Sou um contrato muito legal")
    }
}

class Foto: Imprimivel {
    func imprimir() {
    print("Sou uma selfie")
    }
}

class Documento: Imprimivel {
    func imprimir() {
    print("Sou um documento do word")
    }
}

class Impressora {
    private var arrayImprimiveis = [Imprimivel]()
}