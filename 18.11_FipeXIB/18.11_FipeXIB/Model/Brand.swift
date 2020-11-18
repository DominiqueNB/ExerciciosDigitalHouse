//
//    Brand.swift
//    Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class Brand : NSObject, NSCoding{

    var codigo : String!
    var nome : String!

    override init() {
        
    }
    
    init(fromDictionary dictionary: [String:Any]){
        codigo = dictionary["codigo"] as? String
        nome = dictionary["nome"] as? String
    }


    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if codigo != nil{
            dictionary["codigo"] = codigo
        }
        if nome != nil{
            dictionary["nome"] = nome
        }
        return dictionary
    }

    @objc required init(coder aDecoder: NSCoder)
    {
         codigo = aDecoder.decodeObject(forKey: "codigo") as? String
         nome = aDecoder.decodeObject(forKey: "nome") as? String

    }

    @objc func encode(with aCoder: NSCoder)
    {
        if codigo != nil{
            aCoder.encode(codigo, forKey: "codigo")
        }
        if nome != nil{
            aCoder.encode(nome, forKey: "nome")
        }

    }

}
