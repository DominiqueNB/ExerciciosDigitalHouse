//
//  CarCell.swift
//  10.05_ReviewExercicio3
//
//  Created by Dominique Nascimento Bezerra on 05/10/20.
//

import UIKit

class CarCell: UICollectionViewCell {
    
    
    @IBOutlet weak var labelName: UILabel?
    @IBOutlet weak var imageView: UIImageView?
        
    func setup(car: Car){
        labelName?.text = car.name
        imageView?.image = UIImage(named: car.photo)
    }
    
}
