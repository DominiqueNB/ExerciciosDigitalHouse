//
//  PessoaJuridica.swift
//  SearchClasses
//
//  Created by Alexandre Oliveira on 20/09/20.
//  Copyright © 2020 Dominique N Bezerra. All rights reserved.
//

import Foundation

class PessoaJuridica: Pessoa {
    var cnpj: String
    
    init(nome: String, cnpj: String) {
        self.cnpj = cnpj
        super.init(nome: nome)
    }
}
extension PessoaJuridica: FormatadorProtocol {
    func getFormatado() -> String {
        return "\(nome) \(cnpj)"
    }
    
    func getFormatadoParaUsuario() -> String {
        return "Pessoa Juridica: \(nome) \(cnpj)"
    }
}
