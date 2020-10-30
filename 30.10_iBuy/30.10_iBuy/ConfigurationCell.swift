//
//  ConfigurationCell.swift
//  30.10_iBuy
//
//  Created by Dominique Nascimento Bezerra on 30/10/20.
//

import UIKit

class ConfigurationCell: UITableViewCell {

    @IBOutlet var ConfigurationLabel
        : UILabel!
    
    
    func setupLabel(name: String) {
        ConfigurationLabel.text = name
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
