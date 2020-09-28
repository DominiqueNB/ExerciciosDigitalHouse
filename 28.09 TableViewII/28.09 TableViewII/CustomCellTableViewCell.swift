//
//  CustomCellTableViewCell.swift
//  28.09 TableViewII
//
//  Created by Dominique Nascimento Bezerra on 28/09/20.
//

import UIKit

class CustomCellTableViewCell: UITableViewCell {
    @IBOutlet weak var labelCell: UILabel!
    @IBOutlet weak var labelEmail: UILabel!
    
    @IBOutlet weak var imageViewPhoto: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setup(person: Person) {
        labelCell.text = ""
        labelCell.text =  person.name
        imageViewPhoto.image = UIImage(named: person.image)
        labelEmail.text = person.email
        imageViewPhoto.layer.cornerRadius = imageViewPhoto.frame.size.height/2
        
        
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
