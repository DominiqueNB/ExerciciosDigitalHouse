//
//  CasasDeApostas.swift
//  Exercicio 4 - Hipodromo
//
//  Created by Alexandre Oliveira on 20/09/20.
//  Copyright © 2020 Dominique N Bezerra. All rights reserved.
//

import Foundation

class CasasDeApostas: protocolNotificacao {
    var patrimonio: Double = 0
    
    func notificar(){
        patrimonio += 1000
        print("Ganhando grana")
    }
}

