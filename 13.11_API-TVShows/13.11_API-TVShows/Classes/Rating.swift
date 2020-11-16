//
//  Rating.swift
//  13.11_API-TVShows
//
//  Created by Dominique Nascimento Bezerra on 13/11/20.
//


import Foundation


class Rating : NSObject, NSCoding{

    var average : AnyObject!

    init(fromDictionary dictionary: [String:Any]){
        average = dictionary["average"] as? AnyObject
    }

    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if average != nil{
            dictionary["average"] = average
        }
        return dictionary
    }

    @objc required init(coder aDecoder: NSCoder)
    {
         average = aDecoder.decodeObject(forKey: "average") as? AnyObject

    }

    @objc func encode(with aCoder: NSCoder)
    {
        if average != nil{
            aCoder.encode(average, forKey: "average")
        }

    }

}

