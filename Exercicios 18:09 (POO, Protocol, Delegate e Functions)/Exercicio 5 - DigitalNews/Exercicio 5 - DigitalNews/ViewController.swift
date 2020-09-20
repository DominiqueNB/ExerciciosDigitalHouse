//
//  ViewController.swift
//  Exercicio 5 - DigitalNews
//
//  Created by Alexandre Oliveira on 20/09/20.
//  Copyright © 2020 Dominique N Bezerra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let pessoa = Pessoas(nome: "Maria", rg: "123456", endereco: "Av. tal...")
    let empresa = Empresas(nomeComercial: "ACO", cnpj: "456456", numeroDeFuncionarios: "35")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        pessoa.notificar()
        empresa.notificar()
    }


}

