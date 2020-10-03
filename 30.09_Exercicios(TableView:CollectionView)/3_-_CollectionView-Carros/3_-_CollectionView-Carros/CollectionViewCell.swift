//
//  CollectionViewCell.swift
//  3_-_CollectionView-Carros
//
//  Created by Dominique Nascimento Bezerra on 01/10/20.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageViewCar: UIImageView!
    @IBOutlet weak var textLabelName: UILabel!
    
    func setupCell(car: Car) {
        imageViewCar.image = UIImage(named: car.photo)
        textLabelName.text = car.name
    }
}
