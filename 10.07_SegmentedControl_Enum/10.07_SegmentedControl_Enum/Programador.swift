//
//  Programador.swift
//  10.07_SegmentedControl_Enum
//
//  Created by Dominique Nascimento Bezerra on 07/10/20.
//

import Foundation

class Programador: Pessoa {
    var cargo: String
    
    init(name: String, photo: String, cargo: String) {
        self.cargo = cargo
        super.init(name: name, photo: photo)
    }
    
}
