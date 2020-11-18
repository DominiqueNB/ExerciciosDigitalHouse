//
//  ShowCell.swift
//  16.11_TvShows_MVController
//
//  Created by Dominique Nascimento Bezerra on 16/11/20.
//

import UIKit
import Kingfisher

class ShowCell: UITableViewCell {

    @IBOutlet weak var imageViewShow: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelRating: UILabel!
    
    func setupCell(show: Show) {
        labelName.text = show.name
        if let imageShow = show.image.medium,
           let url = URL(string: imageShow) {
            imageViewShow!.kf.setImage(with: url)
        }
        if let rating = show.rating.average {
            var stringRating = String(format: "%.02f", rating)
            labelRating.text = "\(stringRating) ⭐️"
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    
    }

}
