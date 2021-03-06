//
//  ViewController.swift
//  04.12_Dog_Realm
//
//  Created by Dominique Nascimento Bezerra on 04/12/20.
//

import UIKit
import RealmSwift

// Define your models like regular Swift classes
class Dog: Object {
    @objc dynamic var name = ""
    @objc dynamic var age = 0
}
class Person: Object {
    @objc dynamic var name = ""
    @objc dynamic var picture: Data? = nil // optionals supported
    let dogs = List<Dog>()
}


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Use them like regular Swift objects
        let myDog = Dog()
        myDog.name = "Rex"
        myDog.age = 1
        print("name of dog: \(myDog.name)")

        // Get the default Realm
        let realm = try! Realm()

        // Query Realm for all dogs less than 2 years old
        let puppies = realm.objects(Dog.self).filter("age < 2")
        puppies.count // => 0 because no dogs have been added to the Realm yet

        // Persist your data easily
        try! realm.write {
            realm.add(myDog)
        }

        // Queries are updated in realtime
        puppies.count // => 1

        // Query and update from any thread
        DispatchQueue(label: "background").async {
            autoreleasepool {
                let realm = try! Realm()
                let theDog = realm.objects(Dog.self).filter("age == 1").first
                try! realm.write {
                    theDog!.age = 3
                }
            }
        }

        
        
    }
    
    
}

