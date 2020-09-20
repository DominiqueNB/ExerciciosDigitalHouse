//
//  Caneta.swift
//  SearchClasses
//
//  Created by Alexandre Oliveira on 20/09/20.
//  Copyright © 2020 Dominique N Bezerra. All rights reserved.
//

import Foundation

class Caneta {
    var marca: String
    
    init(marca: String) {
        self.marca = marca
    }
}
extension Caneta: FormatadorProtocol {
    func getFormatado() -> String {
        return "\(marca)"
    }
    
    func getFormatadoParaUsuario() -> String {
        return "Caneta: \(marca)"
    }
}
