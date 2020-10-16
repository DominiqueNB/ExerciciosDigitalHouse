//
//  Cidade.swift
//  10.15_CidadeEstadoPais
//
//  Created by Dominique Nascimento Bezerra on 15/10/20.
//

import Foundation

class Cidade {
    var name: String
    var estado: String
    var pais: String
    
    init(name: String, estado: String, pais: String) {
        self.name = name
        self.estado = estado
        self.pais = pais
    }
}

//class SaoPaulo: Cidade {
//    override init(name: String, estado: String, pais: String) {
//        super.init(name: "São Paulo", estado: "São Paulo", pais: "Brasil")
//    }
//}
//
//class RioDeJaneiro: Cidade {
//    override init(name: String, estado: String, pais: String) {
//        super.init(name: "Rio de Janeiro", estado: "Rio de Janeiro", pais: "Brasil")
//    }
//}
//
//class BeloHorizonte: Cidade {
//    override init(name: String, estado: String, pais: String) {
//        super.init(name: "Belo Horizonte", estado: "Minas Gerais", pais: "Brasil")
//    }
//}
