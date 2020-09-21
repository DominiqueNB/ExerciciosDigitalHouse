//
//  AlunoPessoa.swift
//  ClassesExercise
//
//  Created by Alexandre Oliveira on 16/09/20.
//  Copyright © 2020 Dominique N Bezerra. All rights reserved.
//

import Foundation

class Student: Person {
    var turma: String
    
    init(name: String, surname: String, age: Int, turma: String) {
        self.turma = turma
        super.init(name: name, surname: surname, age: age)
    }
    
    override func getUp() {
        print("Wakes up at 6AM")
    }
}




