//
//  ViewController.swift
//  13.11_API-TVShows
//
//  Created by Dominique Nascimento Bezerra on 13/11/20.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var tableViewShows: UITableView!
    var arrayShows = [Show]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewShows.delegate = self
        tableViewShows.dataSource = self
        loadData()
    }

    func saveShows(arrayShows: [Show]) {
        self.arrayShows = arrayShows
        tableViewShows.reloadData()
    }
    
    func loadData() {
        AF.request("https://api.tvmaze.com/shows?page=1").responseJSON { response in
            print(response)
            if let arrayDictionaries = response.value as? [[String: Any]] {
                var arrayShows = [Show]()
                for dictionary in arrayDictionaries {
                    let customShow = Show(fromDictionary: dictionary)
                    arrayShows.append(customShow)
                }
                DispatchQueue.main.async {
                    self.saveShows(arrayShows: arrayShows)
                }
            }
        }
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let seasonDetails = UIStoryboard(name: "SeasonDetails", bundle: nil).instantiateInitialViewController() as? SeasonDetailsViewController {
            navigationController?.pushViewController(seasonDetails, animated: true)
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayShows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShowCell") as! ShowCell
        cell.setupCell(tvShow: arrayShows[indexPath.row])
        return cell
        
    }
    
    
}
