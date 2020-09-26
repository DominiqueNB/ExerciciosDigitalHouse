//
//  ViewController.swift
//  25.09_TableView
//
//  Created by Dominique Nascimento Bezerra on 25/09/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableViewList: UITableView!
    let arrayCarros = ["Fiat", "Honda", "Renault", "BMW", "Audi"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableViewList.delegate = self
        tableViewList.dataSource = self
    }


}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let car = arrayCarros[indexPath.row]
        print("Marca: \(car)")
        
        

    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayCarros.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = arrayCarros[indexPath.row]
        cell.imageView?.image = UIImage(named: "carro.jpg")
        return cell
    }
    
    
}
