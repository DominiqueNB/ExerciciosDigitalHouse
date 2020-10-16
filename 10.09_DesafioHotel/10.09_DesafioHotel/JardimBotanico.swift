//
//  JardimBotanico.swift
//  10.09_DesafioHotel
//
//  Created by Dominique Nascimento Bezerra on 09/10/20.
//

import Foundation

class JardimBotanico: Hotel {
    
    override init(precoSemana: Int, precoSemanaFidelidade: Int, precoFinalDeSemana: Int
    , precoFinalDeSemanaFidelidade: Int, classificacao: Int) {
        super.init(precoSemana: 160, precoSemanaFidelidade: 110, precoFinalDeSemana: 60, precoFinalDeSemanaFidelidade: 50, classificacao: 4)
    }
}
