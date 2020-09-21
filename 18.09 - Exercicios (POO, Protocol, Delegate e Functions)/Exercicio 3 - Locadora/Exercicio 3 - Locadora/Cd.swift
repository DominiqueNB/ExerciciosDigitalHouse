//
//  Cd.swift
//  Exercicio 3 - Locadora
//
//  Created by Alexandre Oliveira on 20/09/20.
//  Copyright © 2020 Dominique N Bezerra. All rights reserved.
//

import Foundation

class Cd: Alugaveis {
    var cantor: String
    
    init(nome: String, codigo: String, cantor: String) {
        self.cantor = cantor
        super.init(nome: nome, codigo: codigo)
    }
    
    override func fazerLocacao() {
        print("Devolver em 3 dias")
    }
}
