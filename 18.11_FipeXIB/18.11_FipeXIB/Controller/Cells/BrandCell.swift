//
//  BrandCell.swift
//  18.11_FipeXIB
//
//  Created by Dominique Nascimento Bezerra on 18/11/20.
//

import UIKit

class BrandCell: UITableViewCell {

    @IBOutlet weak var labelBrandName: UILabel!
    
    func setupCell(brand: Brand) {
        labelBrandName.text = brand.nome
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
