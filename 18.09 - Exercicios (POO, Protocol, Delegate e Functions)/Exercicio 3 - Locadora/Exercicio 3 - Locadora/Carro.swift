//
//  Carro.swift
//  Exercicio 3 - Locadora
//
//  Created by Alexandre Oliveira on 20/09/20.
//  Copyright © 2020 Dominique N Bezerra. All rights reserved.
//

import Foundation

class Carro: Alugaveis {
    var placa: String
    
    init(nome: String, codigo: String, placa: String) {
        self.placa = placa
        super.init(nome: nome, codigo: nome)
    }
    
    override func fazerLocacao() {
        print("Devolver em 7 dias")
    }
}

