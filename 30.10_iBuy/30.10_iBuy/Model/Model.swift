//
//  Model.swift
//  30.10_iBuy
//
//  Created by Dominique Nascimento Bezerra on 30/10/20.
//

import Foundation

class ListSection {
    var sectionName: String
    var sectionItems: [Item]
    
    init(sectionName: String, sectionItems: [Item]) {
        self.sectionName = sectionName
        self.sectionItems = sectionItems
    }
}


class Item {
    
    var itemName: String
    var isCompleted: Bool
    
    init(itemName: String, isCompleted: Bool) {
        self.itemName = itemName
        self.isCompleted = isCompleted
    }
}
