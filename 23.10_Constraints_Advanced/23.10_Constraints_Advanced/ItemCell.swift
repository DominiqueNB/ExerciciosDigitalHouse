//
//  ItemCell.swift
//  23.10_Constraints_Advanced
//
//  Created by Dominique Nascimento Bezerra on 23/10/20.
//

import UIKit

class ItemCell: UITableViewCell {

    @IBOutlet var labelTitle: UILabel!
    @IBOutlet var labelRatings: UILabel!
    @IBOutlet var labelStars: UILabel!
    @IBOutlet var labelDescription: UILabel!
    @IBOutlet var imageSample: UIImageView!
    
    func setupCell(video: Video) {
        labelTitle.text = video.title
        labelRatings.text = video.ratings
        labelStars.text = video.stars
        labelDescription.text = video.description
        imageSample.image = UIImage(named: video.image)
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
