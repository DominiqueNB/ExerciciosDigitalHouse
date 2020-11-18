//
//  Episodes.swift
//  16.11_TvShows_MVController
//
//  Created by Dominique Nascimento Bezerra on 17/11/20.
//

import Foundation

class Episode: NSObject, NSCoding{

    
    var id : Int!
    var name : String!
    var number : Int!
    var summary : String!

    override init() {

    }
    
    
    init(fromDictionary dictionary: [String:Any]){
        id = dictionary["id"] as? Int
        name = dictionary["name"] as? String
        number = dictionary["number"] as? Int
        summary = dictionary["summary"] as? String
//        summary = summary.replacingOccurrences(of: "<p>", with: "")
//        summary = summary.replacingOccurrences(of: "</p>", with: "")

    }

    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if id != nil{
            dictionary["id"] = id
        }
        if name != nil{
            dictionary["name"] = name
        }
        if number != nil{
            dictionary["number"] = number
        }
        if summary != nil{
            dictionary["summary"] = summary
        }
        return dictionary
    }

   
    @objc required init(coder aDecoder: NSCoder)
    {
         id = aDecoder.decodeObject(forKey: "id") as? Int
         name = aDecoder.decodeObject(forKey: "name") as? String
         number = aDecoder.decodeObject(forKey: "number") as? Int
         summary = aDecoder.decodeObject(forKey: "summary") as? String

    }

    
    @objc func encode(with aCoder: NSCoder)
    {
        if id != nil{
            aCoder.encode(id, forKey: "id")
        }
        if name != nil{
            aCoder.encode(name, forKey: "name")
        }
        if number != nil{
            aCoder.encode(number, forKey: "number")
        }
        if summary != nil{
            aCoder.encode(summary, forKey: "summary")
        }

    }

}
