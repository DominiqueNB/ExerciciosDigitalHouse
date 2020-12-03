//
//  BrandCell.swift
//  02.12_DataBase_Fipe
//
//  Created by Dominique Nascimento Bezerra on 02/12/20.
//

import UIKit

class BrandCell: UITableViewCell {

    @IBOutlet var labelBrandName: UILabel!
    @IBOutlet var myCell: UITableViewCell!
    
    func setupCell(brand: Brand) {
        labelBrandName.text = brand.name
        if brand.isFavorite == true {
            labelBrandName.backgroundColor = UIColor.green
            myCell.backgroundColor = UIColor.green
        }
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
