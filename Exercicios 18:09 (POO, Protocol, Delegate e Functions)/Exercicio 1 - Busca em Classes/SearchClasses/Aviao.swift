//
//  Aviao.swift
//  SearchClasses
//
//  Created by Alexandre Oliveira on 20/09/20.
//  Copyright © 2020 Dominique N Bezerra. All rights reserved.
//

import Foundation

class Aviao {
    var modelo: String
    var cidade: String
    
    init(modelo: String, cidade: String) {
        self.modelo = modelo
        self.cidade = cidade
    }
}
extension Aviao: FormatadorProtocol {
    func getFormatado() -> String {
        return "\(modelo) \(cidade)"
    }
    
    func getFormatadoParaUsuario() -> String {
        return "Avião: \(modelo) \(cidade)"
    }
}
