//
//  Empresas.swift
//  Exercicio 5 - DigitalNews
//
//  Created by Alexandre Oliveira on 20/09/20.
//  Copyright © 2020 Dominique N Bezerra. All rights reserved.

//  nome comercial, CNPJ e o número de funcionários
//  "Agradecemos cordialmente o MonroeStreetJournal pela excelência dos serviços prestados."
//

import Foundation

class Empresas: Assinantes {
    var nomeComercial: String
    var cnpj: String
    var numeroDeFuncionarios: String
    
    init(nomeComercial: String, cnpj: String, numeroDeFuncionarios: String) {
        self.nomeComercial = nomeComercial
        self.cnpj = cnpj
        self.numeroDeFuncionarios = numeroDeFuncionarios
    }
    
    override func notificar() {
        self.mensagem()
    }
        
    override func mensagem() {
        print("Agradecemos cordialmente o MonroeStreetJournal pela excelência dos serviços prestados.")
    }
}
