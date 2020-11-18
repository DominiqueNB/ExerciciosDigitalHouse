//
//  Season.swift
//  16.11_TvShows_MVController
//
//  Created by Dominique Nascimento Bezerra on 16/11/20.
//

import Foundation

class Season : NSObject, NSCoding{

    var endDate : String!
    var id : Int!
    var image : String!
    var name : String!
    var number : Int!
    var premiereDate : String!

    
    override init () {
        
    }

    init(fromDictionary dictionary: [String:Any]){
        endDate = dictionary["endDate"] as? String
        id = dictionary["id"] as? Int
        image = dictionary["image"] as? String
        number = dictionary["number"] as? Int
        premiereDate = dictionary["premiereDate"] as? String
        name = dictionary["name"] as? String
        if let apiName = name {
            if apiName.count == 0 {
                name = "Season \(number!)"
            }
        }
    }

    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if endDate != nil{
            dictionary["endDate"] = endDate
        }
        if id != nil{
            dictionary["id"] = id
        }
        if image != nil{
            dictionary["image"] = image
        }
        if name != nil {
            dictionary["name"] = name
        }
        if number != nil{
            dictionary["number"] = number
        }
        if premiereDate != nil{
            dictionary["premiereDate"] = premiereDate
        }
        return dictionary
    }

    @objc required init(coder aDecoder: NSCoder)
    {
         endDate = aDecoder.decodeObject(forKey: "endDate") as? String
         id = aDecoder.decodeObject(forKey: "id") as? Int
         image = aDecoder.decodeObject(forKey: "image") as? String
         name = aDecoder.decodeObject(forKey: "name") as? String
         number = aDecoder.decodeObject(forKey: "number") as? Int
         premiereDate = aDecoder.decodeObject(forKey: "premiereDate") as? String

    }

    @objc func encode(with aCoder: NSCoder)
    {
        if endDate != nil{
            aCoder.encode(endDate, forKey: "endDate")
        }
        if id != nil{
            aCoder.encode(id, forKey: "id")
        }
        if image != nil{
            aCoder.encode(image, forKey: "image")
        }
        if name != nil{
            aCoder.encode(name, forKey: "name")
        }
        if number != nil{
            aCoder.encode(number, forKey: "number")
        }
        if premiereDate != nil{
            aCoder.encode(premiereDate, forKey: "premiereDate")
        }

    }

}
