//
//  EpisodesCell.swift
//  16.11_TvShows_MVController
//
//  Created by Dominique Nascimento Bezerra on 17/11/20.
//

import UIKit

class EpisodesCell: UITableViewCell {

    @IBOutlet var labelEpisode: UILabel!
   
    
    func setCell(episode: Episode) {
        labelEpisode.text = episode.name
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
