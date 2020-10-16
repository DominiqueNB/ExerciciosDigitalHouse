//
//  CityCell.swift
//  10.15_CidadeEstadoPais
//
//  Created by Dominique Nascimento Bezerra on 15/10/20.
//

import UIKit

class CityCell: UITableViewCell {

    @IBOutlet weak var cityCell: CityCell!
    @IBOutlet weak var labelCity: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    func setupLabel(city: Cidade) {
        labelCity.text = "\(city.name), \(city.estado) - \(city.pais)"
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
