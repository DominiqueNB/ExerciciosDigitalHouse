//
//  CollectionCell.swift
//  06.11_Maps
//
//  Created by Dominique Nascimento Bezerra on 06/11/20.
//

import UIKit

class CollectionCell: UICollectionViewCell {
    
    @IBOutlet var collectionCell: UICollectionViewCell?
    @IBOutlet var labelName: UILabel?
    
    
    func setupLabel(location: CustomLocation) {
        labelName?.text = location.category
        collectionCell?.backgroundColor = .random()
        
    }
}
extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}

extension UIColor {
    static func random() -> UIColor {
        return UIColor(
            red: .random(),
            green: .random(),
            blue: .random(),
            alpha: 1.0
        )
    }
}
