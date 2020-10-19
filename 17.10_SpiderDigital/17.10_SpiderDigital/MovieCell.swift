//
//  MovieCell.swift
//  17.10_SpiderDigital
//
//  Created by Dominique Nascimento Bezerra on 17/10/20.
//

import UIKit

class MovieCell: UITableViewCell {
    
    @IBOutlet var movieCell: UITableViewCell!
    
    @IBOutlet var imageViewPhoto: UIImageView!
    @IBOutlet var labelName: UILabel!
    @IBOutlet var labelGenre: UILabel!

    func setupCell(movie: Movie) {
        imageView?.image = UIImage(named: movie.image)
        labelName.text = movie.name
        labelGenre.text = movie.genre
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
