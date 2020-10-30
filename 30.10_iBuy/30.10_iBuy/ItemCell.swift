//
//  ItemCell.swift
//  30.10_iBuy
//
//  Created by Dominique Nascimento Bezerra on 30/10/20.
//

import UIKit

class ItemCell: UITableViewCell {
    
    @IBOutlet var labelTitle: UILabel?
    
    func setup(item: Item) {
        labelTitle!.text = item.itemName
    }
    
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }

}
