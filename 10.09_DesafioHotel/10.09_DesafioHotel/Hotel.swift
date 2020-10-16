//
//  Hotel.swift
//  10.09_DesafioHotel
//
//  Created by Dominique Nascimento Bezerra on 09/10/20.
//

import Foundation

class Hotel {
    private var precoSemana: Int
    private var precoSemanaFidelidade: Int
    private var precoFinalDeSemana: Int
    private var precoFinalDeSemanaFidelidade: Int
    private var classificacao: Int
    
    init(precoSemana: Int, precoSemanaFidelidade: Int, precoFinalDeSemana: Int
    , precoFinalDeSemanaFidelidade: Int, classificacao: Int) {
        self.precoSemana = precoSemana
        self.precoSemanaFidelidade = precoSemanaFidelidade
        self.precoFinalDeSemana = precoFinalDeSemana
        self.precoFinalDeSemanaFidelidade = precoSemanaFidelidade
        self.classificacao = classificacao
    }
}
