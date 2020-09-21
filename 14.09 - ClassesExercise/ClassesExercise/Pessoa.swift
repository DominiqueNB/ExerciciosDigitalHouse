//
//  Pessoa.swift
//  ClassesExercise
//
//  Created by Alexandre Oliveira on 16/09/20.
//  Copyright © 2020 Dominique N Bezerra. All rights reserved.
//

import Foundation
 
class Person {
    var name: String
    var surname: String
    var age: Int
    
    init(name: String, surname: String, age: Int){
            self.name = name
            self.surname = surname
            self.age = age
        }
        
        func getFullName() -> String{
            return name + " " + surname
        }
        
        func getUp() {
            print("Wakes up at 8AM")
        }
    }



