//
//  Brand.swift
//  02.12_DataBase_Fipe
//
//  Created by Dominique Nascimento Bezerra on 02/12/20.
//

import Foundation
import NAMDatabase

class Brand: NAMObjectModel {
    @objc var id: String!
    @objc var name: String!
    @objc var isFavorite: String!
    
    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    override init() {
    }
    
    init(fromDictionary dictionary: [String: Any]) {
        id = dictionary["codigo"] as? String
        name = dictionary["nome"] as? String
        isFavorite = "false"
        
        if id == nil {
            if let intId = dictionary["codigo"] as? Int {
                id = "\(intId)"
            }
        }
    }
    
    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String: Any] {
        var dictionary = [String: Any]()
        if id != nil {
            dictionary["codigo"] = id
        }
        if name != nil {
            dictionary["nome"] = name
        }
        return dictionary
    }
}
