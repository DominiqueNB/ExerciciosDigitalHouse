//
//  Pessoas.swift
//  Exercicio 5 - DigitalNews
//
//  Created by Alexandre Oliveira on 20/09/20.
//  Copyright © 2020 Dominique N Bezerra. All rights reserved.
//  nome, RG e o endereço de entrega do jornal
//  As pessoas exibirão a mensagem "Muito obrigado, MonroeStreetJournal. Vocês são demais!"

import Foundation

class Pessoas: Assinantes {
    var nome: String
    var rg: String
    var endereco: String
    
    init(nome: String, rg: String, endereco: String) {
        self.nome = nome
        self.rg = rg
        self.endereco = endereco
    }
    
    override func notificar() {
        self.mensagem()
    }
        
    override func mensagem() {
            print("Muito obrigado, MonroeStreetJournal. Vocês são demais!")
    }
}
