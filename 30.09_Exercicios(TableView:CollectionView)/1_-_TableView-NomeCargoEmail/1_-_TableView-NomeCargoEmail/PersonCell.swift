//
//  PersonCell.swift
//  1_-_TableView-NomeCargoEmail
//
//  Created by Dominique Nascimento Bezerra on 30/09/20.
//

import UIKit

class PersonCell: UITableViewCell {

    @IBOutlet weak var textLabelName: UILabel!
    @IBOutlet weak var textLabelRole: UILabel!
    @IBOutlet weak var textLabelEmail: UILabel!
    
    
    func setup(person: Person) {
        textLabelName.text = person.name
        textLabelRole.text = person.role
        textLabelEmail.text = person.email
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
}
