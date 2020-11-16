//
//  SeasonDetailsViewController.swift
//  13.11_API-TVShows
//
//  Created by Dominique Nascimento Bezerra on 13/11/20.
//

import UIKit

class SeasonDetailsViewController: UIViewController {

    @IBOutlet weak var tableViewSeasons: UITableView!
    var arraySeasons = [Show]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewSeasons.delegate = self
        tableViewSeasons.dataSource = self
    }
    

}

extension SeasonDetailsViewController: UITableViewDelegate {
    
}

extension SeasonDetailsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arraySeasons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SeasonsCell") as! SeasonsCell
        cell.setupCell()
        return cell
    }
    
    
}
