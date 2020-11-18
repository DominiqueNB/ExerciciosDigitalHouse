//
//  Car.swift
//  18.11_FipeXIB
//
//  Created by Dominique Nascimento Bezerra on 18/11/20.
//
//
//    Car.swift
//    Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class Car : NSObject, NSCoding{

    var anoModelo : Int!
    var codigoFipe : String!
    var combustivel : String!
    var marca : String!
    var mesReferencia : String!
    var modelo : String!
    var siglaCombustivel : String!
    var tipoVeiculo : Int!
    var valor : String!


    override init() {
        
    }
    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        anoModelo = dictionary["AnoModelo"] as? Int
        codigoFipe = dictionary["CodigoFipe"] as? String
        combustivel = dictionary["Combustivel"] as? String
        marca = dictionary["Marca"] as? String
        mesReferencia = dictionary["MesReferencia"] as? String
        modelo = dictionary["Modelo"] as? String
        siglaCombustivel = dictionary["SiglaCombustivel"] as? String
        tipoVeiculo = dictionary["TipoVeiculo"] as? Int
        valor = dictionary["Valor"] as? String
    }

    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if anoModelo != nil{
            dictionary["AnoModelo"] = anoModelo
        }
        if codigoFipe != nil{
            dictionary["CodigoFipe"] = codigoFipe
        }
        if combustivel != nil{
            dictionary["Combustivel"] = combustivel
        }
        if marca != nil{
            dictionary["Marca"] = marca
        }
        if mesReferencia != nil{
            dictionary["MesReferencia"] = mesReferencia
        }
        if modelo != nil{
            dictionary["Modelo"] = modelo
        }
        if siglaCombustivel != nil{
            dictionary["SiglaCombustivel"] = siglaCombustivel
        }
        if tipoVeiculo != nil{
            dictionary["TipoVeiculo"] = tipoVeiculo
        }
        if valor != nil{
            dictionary["Valor"] = valor
        }
        return dictionary
    }

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
    {
         anoModelo = aDecoder.decodeObject(forKey: "AnoModelo") as? Int
         codigoFipe = aDecoder.decodeObject(forKey: "CodigoFipe") as? String
         combustivel = aDecoder.decodeObject(forKey: "Combustivel") as? String
         marca = aDecoder.decodeObject(forKey: "Marca") as? String
         mesReferencia = aDecoder.decodeObject(forKey: "MesReferencia") as? String
         modelo = aDecoder.decodeObject(forKey: "Modelo") as? String
         siglaCombustivel = aDecoder.decodeObject(forKey: "SiglaCombustivel") as? String
         tipoVeiculo = aDecoder.decodeObject(forKey: "TipoVeiculo") as? Int
         valor = aDecoder.decodeObject(forKey: "Valor") as? String

    }

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
    {
        if anoModelo != nil{
            aCoder.encode(anoModelo, forKey: "AnoModelo")
        }
        if codigoFipe != nil{
            aCoder.encode(codigoFipe, forKey: "CodigoFipe")
        }
        if combustivel != nil{
            aCoder.encode(combustivel, forKey: "Combustivel")
        }
        if marca != nil{
            aCoder.encode(marca, forKey: "Marca")
        }
        if mesReferencia != nil{
            aCoder.encode(mesReferencia, forKey: "MesReferencia")
        }
        if modelo != nil{
            aCoder.encode(modelo, forKey: "Modelo")
        }
        if siglaCombustivel != nil{
            aCoder.encode(siglaCombustivel, forKey: "SiglaCombustivel")
        }
        if tipoVeiculo != nil{
            aCoder.encode(tipoVeiculo, forKey: "TipoVeiculo")
        }
        if valor != nil{
            aCoder.encode(valor, forKey: "Valor")
        }

    }

}
