//
//  ViewController.swift
//  Exercicio 4 - Hipodromo
//
//  Created by Alexandre Oliveira on 20/09/20.
//  Copyright © 2020 Dominique N Bezerra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var apostadores = Apostadores()
    var kronikaTv = KronikaTV()
    var casaDeApostas = CasasDeApostas()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        apostadores.notificar()
        kronikaTv.notificar()
        casaDeApostas.notificar()
    }


}

