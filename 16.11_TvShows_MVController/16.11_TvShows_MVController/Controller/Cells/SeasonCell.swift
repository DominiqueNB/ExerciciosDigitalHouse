//
//  SeasonCell.swift
//  16.11_TvShows_MVController
//
//  Created by Dominique Nascimento Bezerra on 16/11/20.
//

import UIKit

class SeasonCell: UITableViewCell {

    @IBOutlet var labelSeason: UILabel!
    
    func setupCell (season: Season) {
        labelSeason.text = season.name
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
