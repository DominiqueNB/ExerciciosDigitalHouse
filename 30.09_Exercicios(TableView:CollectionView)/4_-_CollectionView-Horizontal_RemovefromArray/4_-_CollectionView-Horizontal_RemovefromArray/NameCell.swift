//
//  NameCell.swift
//  4_-_CollectionView-Horizontal_RemovefromArray
//
//  Created by Dominique Nascimento Bezerra on 02/10/20.
//

import UIKit

class NameCell: UICollectionViewCell {
    
    @IBOutlet weak var nameCell: UIView!
    @IBOutlet weak var textLabelName: UILabel!
    
    func setLabel(name: Name) {
        textLabelName.text = name.name
        nameCell.backgroundColor = UIColor.lightGray
    }
}
