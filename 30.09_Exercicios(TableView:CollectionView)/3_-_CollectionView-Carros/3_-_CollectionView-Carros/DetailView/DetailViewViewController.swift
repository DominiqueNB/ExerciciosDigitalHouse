//
//  DetailViewViewController.swift
//  3_-_CollectionView-Carros
//
//  Created by Dominique Nascimento Bezerra on 02/10/20.
//

import UIKit

class DetailViewViewController: UIViewController {

    @IBOutlet weak var imageViewDetail: UIImageView!
    private var car: Car!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = car.name
        imageViewDetail.image = UIImage(named: car!.photo)
        
    }
    
    func setCar(car: Car) {
        self.car = car
//        imageViewDetail.image = UIImage(named: car.photo)
        print(car.photo)
    }
}
