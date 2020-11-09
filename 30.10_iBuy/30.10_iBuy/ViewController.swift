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
        arrayItems.append(Item(itemName: "Arroz", isCompleted: true))
        arrayItems.append(Item(itemName: "Frango", isCompleted: true))
        arrayItems.append(Item(itemName: "Farinha", isCompleted: true))
        arrayItems.append(Item(itemName: "Carne", isCompleted: true))
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
    
    func openActionSheet(item: Item){
        let alert = UIAlertController(title: "Selecione a opção desejada", message: "", preferredStyle: .actionSheet)
        
        markAsConcluded(item: item, alert: alert)
        editItem(item: item, alert: alert)
        deleteItem(item: item, alert: alert)
        
        present(alert, animated: true, completion: nil)
    }
    
    func markAsConcluded (item: Item, alert: UIAlertController) {
        if item.isCompleted {
            alert.addAction(UIAlertAction(title: "Marcar como concluído", style: .default, handler: {_ in
                self.reverseIsConcluded(item: item)
            }))
        } else {
            alert.addAction(UIAlertAction(title: "Marcar como em aberto", style: .default, handler: { _ in
                self.reverseIsConcluded(item: item)
            }))
            }
    }
    
    func reverseIsConcluded(item: Item) {
        item.isCompleted = !item.isCompleted
        self.tableViewList?.reloadData()
    }
    
    
    func editItem(item: Item, alert: UIAlertController) {
        alert.addAction(UIAlertAction(title: "Editar", style: .default, handler: { _ in print("Editar")
            let editAlert = UIAlertController(title: "Editar",
                                              message: "",
                                              preferredStyle: .alert)
            editAlert.addTextField { textField in
                textField.text = "\(item.itemName)"
            }
            let cancelButton = UIAlertAction(title: "Cancel", style: .default, handler: nil)
            editAlert.addAction(UIAlertAction(title: "OK", style: .default) { (action) in
                let textField = editAlert.textFields?.first
                print(textField?.text)
                item.itemName = (textField?.text)!
                self.tableViewList?.reloadData()
                }
            )
            editAlert.addAction(cancelButton)
            self.present(editAlert, animated: true, completion: nil)
            
        }))
    }
    
    func deleteItem (item: Item, alert: UIAlertController) {
        alert.addAction(UIAlertAction(title: "Excluir", style: .destructive, handler: { _ in print("Excluir")
            let removeAlert = UIAlertController(title: "Excluir",
                                              message: "Tem certeza que deseja excluir item?",
                                              preferredStyle: .alert)

            let cancelButton = UIAlertAction(title: "Cancel", style: .default, handler: nil)
            let editButton = UIAlertAction(title: "OK", style: .destructive, handler: { _ in
//                arrayItems.remove()
            })
            
            removeAlert.addAction(cancelButton)
            removeAlert.addAction(editButton)
            self.present(removeAlert, animated: true, completion: nil)
        }))
        }
}
        

extension ViewController: UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return arraySections.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print(arraySections[indexPath.section].sectionItems[indexPath.row].itemName)
        self.openActionSheet(item: arraySections[indexPath.section].sectionItems[indexPath.row])
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
