//
//  IdosoPessoa.swift
//  ClassesExercise
//
//  Created by Alexandre Oliveira on 16/09/20.
//  Copyright © 2020 Dominique N Bezerra. All rights reserved.
//

import Foundation

class Elderly: Person {
    var medicineCounter: Int = 0

    init(name: String, surname: String, age: Int, turma: String, medicineCounter: Int) {
        self.medicineCounter = medicineCounter
        super.init(name: name, surname: surname, age: age)
        }
    func didTakeMedicine() {
        medicineCounter += 1
    }
    private func getMedicineQuantity() {
        print(medicineCounter)
    }
}

