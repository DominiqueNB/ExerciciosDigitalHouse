//
//  ItemRepositorio.swift
//  NãoEsqueceApp
//
//  Created by Alexandre Oliveira on 16/09/20.
//  Copyright © 2020 Dominique N Bezerra. All rights reserved.
//

import Foundation

class ItemRepositorio {
    var arrayItem = [Item]()
    
    init(arrayItem: [Item]) {
        self.arrayItem = arrayItem
    }
    
    func get(nome: String) -> Item? {
        for item in arrayItem {
            if nome == item.nome {
                return item
            }
        
        }
        return nil
    }
    
    func isCadastrado(nome: String) -> Bool {
        for item in arrayItem {
            if nome == item.nome {
                return true
            }
        
        }
        return false
    }
    
    func cadastrar(nome: String, quantidade: Int) {
        if get(nome: nome) == nil {
            let item = Item(nome: nome, quantidade: quantidade)
            arrayItem.append(item)
        }
        else {
            for item in arrayItem {
                if item.nome == nome {
                    item.quantidade = quantidade
                }
            }
        }
    }
    
    func excluirItem(nome: String) {
        arrayItem = arrayItem.filter(){$0.nome != nome}
    }
    
    
}
