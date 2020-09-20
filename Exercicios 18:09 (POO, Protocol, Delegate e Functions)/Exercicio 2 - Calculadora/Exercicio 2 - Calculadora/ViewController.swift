//
//  ViewController.swift
//  Exercicio 2 - Calculadora
//
//  Created by Alexandre Oliveira on 20/09/20.
//  Copyright © 2020 Dominique N Bezerra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let conta = Calculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(conta.adition(firstNumber: 1, secondNumber: nil))
        print(conta.division(firstNumber: 1, secondNumber: nil))
        
    }
    

}

