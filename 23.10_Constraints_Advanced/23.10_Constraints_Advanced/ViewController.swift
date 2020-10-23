//
//  ViewController.swift
//  23.10_Constraints_Advanced
//
//  Created by Dominique Nascimento Bezerra on 23/10/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableViewList: UITableView?
    @IBOutlet var buttonConfirmar: UIButton?
    @IBOutlet var buttonExcluir: UIButton?
    
    var arrayList = [Video]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonConfirmar!.layer.cornerRadius = 10
        buttonExcluir!.layer.cornerRadius = 10
        
        tableViewList?.delegate = self
        tableViewList?.dataSource = self
        
        arrayList.append(Video(title: "Episódio 5, Temporada 6 Masterchef", ratings: "(415 avaliações)", stars: "⭐️⭐️⭐️", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum", image: "homem_aranha.jpeg"))
        arrayList.append(Video(title: "Iron Man", ratings: "(212 avaliações)", stars: "⭐️⭐️⭐️⭐️⭐️", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna", image: "homem_aranha.jpeg"))
        arrayList.append(Video(title: "Episódio 5, Temporada 6 Masterchef", ratings: "(415 avaliações)", stars: "⭐️⭐️⭐️", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum", image: "homem_aranha.jpeg"))
    }


}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath) as! ItemCell
        cell.setupCell(video: arrayList[indexPath.row])
        return cell
    }
    
    
}
