//
//  Cachorro.swift
//  SearchClasses
//
//  Created by Alexandre Oliveira on 20/09/20.
//  Copyright © 2020 Dominique N Bezerra. All rights reserved.
//

import Foundation

class Cachorro: Pessoa {
    var raca: String
    
    init(nome: String, raca: String) {
        self.raca = raca
        super.init(nome: nome)
    }
}
extension Cachorro: FormatadorProtocol {
    func getFormatado() -> String {
        return "\(nome) \(raca)"
    }
    
    func getFormatadoParaUsuario() -> String {
        return "Cachorro: \(nome) \(raca)"
    }
}
