//
//  EpisodesViewController.swift
//  16.11_TvShows_MVController
//
//  Created by Dominique Nascimento Bezerra on 17/11/20.
//

import UIKit

class EpisodeDetailsViewController: UIViewController {
    
    @IBOutlet weak var imageViewEpisode: UIImageView!
    @IBOutlet weak var labelEpisodesName: UILabel!
    @IBOutlet weak var labelEpisodesDescription: UILabel!
    @IBOutlet weak var labelEpisodesRating: UILabel!
    
    var episode = Episode()
    var tvShow = Show()
    
    func setComponents() {
//        imageViewEpisode.image = tvShow.image
        labelEpisodesName.text = episode.name
        if let summary = episode.summary {
        labelEpisodesDescription.text = summary
        }
//        if let rating = tvShow.rating.average {
//            var stringRating = String(format: "%.02f", rating)
//            self.labelEpisodesRating.text = "\(stringRating) ⭐️"
//        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.setComponents()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
