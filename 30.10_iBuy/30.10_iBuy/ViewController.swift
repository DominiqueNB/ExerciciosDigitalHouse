//
//  ViewController.swift
//  30.10_iBuy
//
//  Created by Dominique Nascimento Bezerra on 30/10/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var searchBar: UISearchBar?
    @IBOutlet var tableViewList: UITableView?
    
    var arrayItems = [Item]()
    var arraySections = [ListSection]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewList!.delegate = self
        tableViewList!.dataSource = self
        
        
        arrayItems.append(Item(itemName: "Maçã", isCompleted: true))
        arrayItems.append(Item(itemName: "Uva", isCompleted: true))
        arrayItems.append(Item(itemName: "Pera", isCompleted: true))
        arrayItems.append(Item(itemName: "Salada Mista", isCompleted: true))
        arrayItems.append(Item(itemName: "Amora", isCompleted: true))
        arrayItems.append(Item(itemName: "Arroz", isCompleted: false))
        arrayItems.append(Item(itemName: "Frango", isCompleted: false))
        arrayItems.append(Item(itemName: "Farinha", isCompleted: false))
        arrayItems.append(Item(itemName: "Carne", isCompleted: false))
        arrayItems.append(Item(itemName: "Ovo", isCompleted: false))
        
        let sectionOpen = ListSection(sectionName: "Abertos", sectionItems: arrayItems.filter({ (item) -> Bool in
            return item.isCompleted
        }))
        
        let sectionCompleted = ListSection(sectionName: "Concluídos", sectionItems: arrayItems.filter({ (item) -> Bool in
            return item.isCompleted == false
        }))
        
        arraySections.append(sectionOpen)
        arraySections.append(sectionCompleted)
    }
    
}

extension ViewController: UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return arraySections.count
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arraySections[section].sectionItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath) as! ItemCell
        cell.setup(item: arraySections[indexPath.section].sectionItems[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return arraySections[section].sectionName
    }
    
}
