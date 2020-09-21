//
//  DVD.swift
//  Exercicio 3 - Locadora
//
//  Created by Alexandre Oliveira on 20/09/20.
//  Copyright © 2020 Dominique N Bezerra. All rights reserved.
//

import Foundation

class Dvd: Alugaveis {
    var formatoDeVideo: String
    
    init(nome: String, codigo: String, formatoDeVideo: String) {
        self.formatoDeVideo = formatoDeVideo
        super.init(nome: nome, codigo: codigo)
    }
    
    override func fazerLocacao() {
        print("Devolver em 5 dias")
    }
}
