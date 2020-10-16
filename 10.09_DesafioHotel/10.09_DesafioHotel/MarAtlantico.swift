//
//  MarAtlantico.swift
//  10.09_DesafioHotel
//
//  Created by Dominique Nascimento Bezerra on 09/10/20.
//

import Foundation

class MarAtlantico : Hotel {
    
    override init(precoSemana: Int, precoSemanaFidelidade: Int, precoFinalDeSemana: Int
    , precoFinalDeSemanaFidelidade: Int, classificacao: Int) {
        super.init(precoSemana: 220, precoSemanaFidelidade: 100, precoFinalDeSemana: 150, precoFinalDeSemanaFidelidade: 40, classificacao: 5)
    }
}
