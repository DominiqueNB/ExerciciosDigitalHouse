//
//  ViewController.swift
//  SearchClasses
//
//  Created by Alexandre Oliveira on 20/09/20.
//  Copyright © 2020 Dominique N Bezerra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var arrayItens = [FormatadorProtocol]()
    
    @IBOutlet weak var searchBarPesquisa: UISearchBar!
    @IBOutlet weak var labelList: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        searchBarPesquisa.delegate = self
        
        arrayItens.append(PessoaFisica(nome: "Dominique", cpf: "123123123"))
        arrayItens.append(PessoaJuridica(nome: "DNBezerra", cnpj: "456456456"))
        arrayItens.append(Aviao(modelo: "Airbus", cidade: "Aracati"))
        arrayItens.append(Cachorro(nome: "Cristal", raca: "spituaua"))
        arrayItens.append(Caneta(marca: "Bic"))
    }

    func filtrar(textoPesquisa: String) {
        var arrayFiltrado = [FormatadorProtocol]()
        
        for item in arrayItens {
            if item.getFormatado().lowercased().contains(textoPesquisa.lowercased()) {
                arrayFiltrado.append(item)
            }
        var output = ""
        
        for item in arrayFiltrado {
            output = "\(output)\n\(item.getFormatadoParaUsuario())"
        }
            labelList.text = output
            
        }
    }
    
}

extension ViewController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        if let text = searchBar.text {
            filtrar(textoPesquisa: text)
        }
    }
}
