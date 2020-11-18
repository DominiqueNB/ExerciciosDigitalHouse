//
//  EpisodesListViewController.swift
//  16.11_TvShows_MVController
//
//  Created by Dominique Nascimento Bezerra on 17/11/20.
//

import UIKit

class EpisodesListViewController: UIViewController {
    
    @IBOutlet var tableViewEpisode: UITableView!
    var controller = EpisodesController()
    var show = ShowController()
    var season = Season()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewEpisode.delegate = self
        tableViewEpisode.dataSource = self
        let onLoadData = {
            DispatchQueue.main.async {
                self.tableViewEpisode.reloadData()
            }
        }
        controller.loadData(season: season, onLoadData: onLoadData)
    }
    
}


extension EpisodesListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let episodeDetails = UIStoryboard(name: "EpisodeDetails", bundle: nil).instantiateInitialViewController() as? EpisodeDetailsViewController {
            if let episode = controller.arrayEpisodes[indexPath.row] {
                episodeDetails.episode = episode
//                episodeDetails.tvShow = tvShow
            navigationController?.pushViewController(episodeDetails, animated: true)
            }
        }
    }
}

extension EpisodesListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return controller.arrayEpisodes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EpisodesCell") as! EpisodesCell
        cell.setCell(episode: controller.arrayEpisodes[indexPath.row]!)
        return cell
    }
    
    
}
