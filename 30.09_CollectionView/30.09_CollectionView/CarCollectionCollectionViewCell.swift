//
//  CarCollectionCollectionViewCell.swift
//  30.09_CollectionView
//
//  Created by Dominique Nascimento Bezerra on 30/09/20.
//

import UIKit

class CarCollectionCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageViewCar: UIImageView!
    
    func setup(car: Car) {
        imageViewCar.image = UIImage(named: car.photo)
    }
    
}
    
