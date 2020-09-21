//
//  Calculadora.swift
//  Exercicio 2 - Calculadora
//
//  Created by Alexandre Oliveira on 20/09/20.
//  Copyright © 2020 Dominique N Bezerra. All rights reserved.
//

import Foundation

class Calculator {
//    var firstNumber: Int
//    var secondNumber: Int?
    private var result: Int = 0
//
//    init(firstNumber: Int, secondNumber: Int, result: Int) {
//        self.firstNumber = 0
//        self.result = 0
//    }
    
    func adition(firstNumber: Int, secondNumber: Int?) -> Int {
        if let number = secondNumber {
            result = firstNumber + number
        } else {
            result += firstNumber
        }
        return result
    }
    
    func subtraction(firstNumber: Int, secondNumber: Int?) -> Int {
        if let number = secondNumber {
            result = firstNumber - number
        } else {
            result -= firstNumber
        }
        return result
    }
    
    func multiplication(firstNumber: Int, secondNumber: Int?) -> Double {
        if let number = secondNumber {
            result = firstNumber * number
        } else {
            result *= firstNumber
        }
        return Double(result)
    }
    
    
    func division(firstNumber: Int, secondNumber: Int?) -> Double {
        if let number = secondNumber {
            result = firstNumber / number
        } else {
            result /= firstNumber
        }
        return Double(result)
    }
    
}
