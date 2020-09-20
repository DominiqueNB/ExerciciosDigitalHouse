//
//  ViewController.swift
//  Exercicio 3 - Locadora
//
//  Created by Alexandre Oliveira on 20/09/20.
//  Copyright © 2020 Dominique N Bezerra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let alugar = Locadora()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let dvd = Dvd(nome: "UAPR", codigo: "656", formatoDeVideo: "mp4")
        dvd.fazerLocacao()
        let livro = Livro(nome: "MIASK", codigo: "889", quantidadeDePaginas: "789")
        livro.fazerLocacao()
        let cd = Cd(nome: "BTB", codigo: "465", cantor: "Amy Winehouse")
        cd.fazerLocacao()
        let carro = Carro(nome: "Siena", codigo: "123", placa: "OAM-7603")
        carro.fazerLocacao()
    }
}

