//
//  Livro.swift
//  Exercicio 3 - Locadora
//
//  Created by Alexandre Oliveira on 20/09/20.
//  Copyright © 2020 Dominique N Bezerra. All rights reserved.
//

import Foundation

class Livro: Alugaveis {
    var quantidadeDePaginas: String
        
    init(nome: String, codigo: String, quantidadeDePaginas: String) {
        self.quantidadeDePaginas = quantidadeDePaginas
        super.init(nome: nome, codigo: codigo)
    }
    
    override func fazerLocacao() {
        print("Devolver em 15 dias")
    }
}
