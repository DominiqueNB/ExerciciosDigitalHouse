//
//  CarModelsCell.swift
//  18.11_FipeXIB
//
//  Created by Dominique Nascimento Bezerra on 18/11/20.
//

import UIKit

class CarModelsCell: UITableViewCell {

    @IBOutlet weak var labelCarModelsModel: UILabel!
    
    func setupCell(carModel: CarModels) {
        labelCarModelsModel.text = carModel.nome
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
