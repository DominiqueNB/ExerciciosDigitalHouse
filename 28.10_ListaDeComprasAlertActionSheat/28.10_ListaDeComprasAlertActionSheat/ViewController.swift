//
//  ViewController.swift
//  28.10_ListaDeComprasAlertActionSheat
//
//  Created by Dominique Nascimento Bezerra on 28/10/20.
//

import UIKit

class ViewController: UIViewController {

    var arrayItems = [String]()
    @IBOutlet var tableViewList: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewList?.delegate = self
        tableViewList?.dataSource = self
        
        arrayItems.append("arroz")
    }
    @IBAction func addNewItem() {
        let alert = UIAlertController(title: "Adicione um item a lista", message: "Digite o nome:", preferredStyle: .alert)
        alert.addTextField(configurationHandler: { textField in
                textField.placeholder = "Digite o nome"
                            textField.tag = 10})
        let addButton = UIAlertAction(title: "Ok", style: .default) { (<#UIAlertAction#>) in
            if let textField = alert.textFields
        }
    }
}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = arrayItems[indexPath.row]
        return cell
    }
    
    
}
