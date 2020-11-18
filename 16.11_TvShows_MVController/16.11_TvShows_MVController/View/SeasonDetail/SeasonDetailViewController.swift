//
//  SeasonDetailViewController.swift
//  16.11_TvShows_MVController
//
//  Created by Dominique Nascimento Bezerra on 16/11/20.
//

import UIKit

class SeasonDetailViewController: UIViewController {

    @IBOutlet var tableViewSeasons: UITableView!
    var controller = SeasonsController()
    var tvShow = Show()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewSeasons.delegate = self
        tableViewSeasons.dataSource = self
        let onLoadData = {
            DispatchQueue.main.async {
                self.tableViewSeasons.reloadData()
            }
        }
        controller.loadData(show: self.tvShow, onLoadData: onLoadData)
    }
   

}

extension SeasonDetailViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if let episodesList = UIStoryboard(name: "EpisodesList", bundle: nil).instantiateInitialViewController() as? EpisodesListViewController {
            if let seasons = controller.arraySeasons[indexPath.row] {
                episodesList.season = seasons
            }
            navigationController?.pushViewController(episodesList, animated: true)
        }
    }
}

extension SeasonDetailViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return controller.arraySeasons.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SeasonCell") as! SeasonCell
        cell.setupCell(season: controller.arraySeasons[indexPath.row]!)
        return cell
    }
    
    
}
