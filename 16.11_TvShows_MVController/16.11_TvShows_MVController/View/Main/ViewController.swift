//
//  ViewController.swift
//  16.11_TvShows_MVController
//
//  Created by Dominique Nascimento Bezerra on 16/11/20.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var tableViewShow: UITableView!
    
    var controller = ShowController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewShow.delegate = self
        tableViewShow.dataSource = self
        let onLoadData = {
            DispatchQueue.main.async {
                self.tableViewShow.reloadData()
            }
        }
        controller.loadData(onLoadData: onLoadData)
    }


}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if let seasonDetail = UIStoryboard(name: "SeasonDetail", bundle: nil).instantiateInitialViewController() as? SeasonDetailViewController {
            if let tvShow = controller.arrayShows[indexPath.row] {
                seasonDetail.tvShow = tvShow
            }
            navigationController?.pushViewController(seasonDetail, animated: true)
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return controller.arrayShows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShowCell") as! ShowCell
        cell.setupCell(show: controller.arrayShows[indexPath.row]!)
        return cell
    }
    
    
}
