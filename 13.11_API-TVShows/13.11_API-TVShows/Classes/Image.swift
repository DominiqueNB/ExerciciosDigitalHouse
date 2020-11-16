//
//  Image.swift
//  13.11_API-TVShows
//
//  Created by Dominique Nascimento Bezerra on 13/11/20.
//


import Foundation


class Image : NSObject, NSCoding{

    var medium : String!
    var original : String!


    init(fromDictionary dictionary: [String:Any]){
        medium = dictionary["medium"] as? String
        original = dictionary["original"] as? String
    }

    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if medium != nil{
            dictionary["medium"] = medium
        }
        if original != nil{
            dictionary["original"] = original
        }
        return dictionary
    }

    @objc required init(coder aDecoder: NSCoder)
    {
         medium = aDecoder.decodeObject(forKey: "medium") as? String
         original = aDecoder.decodeObject(forKey: "original") as? String

    }

    @objc func encode(with aCoder: NSCoder)
    {
        if medium != nil{
            aCoder.encode(medium, forKey: "medium")
        }
        if original != nil{
            aCoder.encode(original, forKey: "original")
        }

    }

}


