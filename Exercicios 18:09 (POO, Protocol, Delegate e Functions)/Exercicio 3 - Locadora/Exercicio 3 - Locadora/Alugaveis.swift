//
//  Alugaveis.swift
//  Exercicio 3 - Locadora
//
//  Created by Alexandre Oliveira on 20/09/20.
//  Copyright © 2020 Dominique N Bezerra. All rights reserved.
//

import Foundation

class Alugaveis {
    var nome: String
    var codigo: String
    
    init(nome: String, codigo: String) {
        self.nome = nome
        self.codigo = codigo
    }
    
    func fazerLocacao() {
        print("Vai ser alugado")
    }
}
