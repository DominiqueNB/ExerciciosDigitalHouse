//
//  DetailViewViewController.swift
//  10.05_ReviewExercicio3
//
//  Created by Dominique Nascimento Bezerra on 05/10/20.
//

import UIKit

class DetailViewViewController: UIViewController {

    
    var car: Car?
    @IBOutlet weak var imageViewDetail: UIImageView?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let car = car {
            imageViewDetail?.image = UIImage(named: car.photo)
            title = car.name
        }
    }
    func setCar(car: Car) {
        self.car = car
    }
   
    
}
