//
//  AnimalsCell.swift
//  2_-_TableView-Animal
//
//  Created by Dominique Nascimento Bezerra on 30/09/20.
//

import UIKit

class AnimalsCell: UITableViewCell {

    @IBOutlet weak var AnimalCell: UIView!
    
    @IBOutlet weak var textLabelSpecies: UILabel!
    @IBOutlet weak var textLabelBreed: UILabel!
    @IBOutlet weak var textLabelName: UILabel!
    @IBOutlet weak var textLabelWeight: UILabel!
    
    func setup(animal: Animal) {
        textLabelName.text = animal.name
        textLabelBreed.text = animal.breed
        textLabelWeight.text = animal.weight
        textLabelSpecies.text = animal.species
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
