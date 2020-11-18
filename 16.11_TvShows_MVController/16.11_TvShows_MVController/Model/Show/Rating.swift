//
//  Rating.swift
//  16.11_TvShows_MVController
//
//  Created by Dominique Nascimento Bezerra on 16/11/20.
//

import Foundation

class Rating : NSObject, NSCoding{

    var average : Double!

    init(fromDictionary dictionary: [String:Any]){
        average = dictionary["average"] as? Double
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
         average = aDecoder.decodeObject(forKey: "average") as? Double

    }

    @objc func encode(with aCoder: NSCoder)
    {
        if average != nil{
            aCoder.encode(average, forKey: "average")
        }

    }

}
