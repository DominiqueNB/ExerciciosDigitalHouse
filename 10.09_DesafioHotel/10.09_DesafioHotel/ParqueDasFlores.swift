//
//  ParqueDasFlores.swift
//  10.09_DesafioHotel
//
//  Created by Dominique Nascimento Bezerra on 09/10/20.
//

import Foundation

class ParqueDasFlores : Hotel {
    
    override init(precoSemana: Int, precoSemanaFidelidade: Int, precoFinalDeSemana: Int
    , precoFinalDeSemanaFidelidade: Int, classificacao: Int) {
        super.init(precoSemana: 110, precoSemanaFidelidade: 80, precoFinalDeSemana: 90, precoFinalDeSemanaFidelidade: 80, classificacao: 3)
    }
}
