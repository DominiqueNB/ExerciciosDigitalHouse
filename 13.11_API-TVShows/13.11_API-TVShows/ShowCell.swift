//
//  ShowCell.swift
//  13.11_API-TVShows
//
//  Created by Dominique Nascimento Bezerra on 13/11/20.
//

import UIKit
import Kingfisher

class ShowCell: UITableViewCell {

    @IBOutlet weak var imageViewShow: UIImageView!
    @IBOutlet weak var labellShowName: UILabel!
    
    func setupCell(tvShow: Show) {
        labellShowName.text = tvShow.name
        if let imageTvShow = tvShow.image.medium,
           let url = URL(string: imageTvShow) {
            imageView!.kf.setImage(with: url)
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
