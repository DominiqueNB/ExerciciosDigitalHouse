//
//  PessoaFisica.swift
//  SearchClasses
//
//  Created by Alexandre Oliveira on 20/09/20.
//  Copyright © 2020 Dominique N Bezerra. All rights reserved.
//

import Foundation

class PessoaFisica: Pessoa {
    var cpf: String
    
    init(nome: String, cpf: String) {
        self.cpf = cpf
        super.init(nome: nome)
    }
}
extension PessoaFisica: FormatadorProtocol {
    func getFormatado() -> String {
        return "\(nome) \(cpf)"
    }
    
    func getFormatadoParaUsuario() -> String {
        return "Pessoa Fisica: \(nome) \(cpf)"
    }
}
