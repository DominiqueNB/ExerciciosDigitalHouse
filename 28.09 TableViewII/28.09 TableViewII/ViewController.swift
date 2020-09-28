//
//  ViewController.swift
//  28.09 TableViewII
//
//  Created by Dominique Nascimento Bezerra on 28/09/20.
//

import UIKit

class ViewController: UIViewController {

//    var arrayPessoas = ["João", "Maria", "José", "Carlos", "Pedro"]
    var arrayPeople = [Person]()
    
    @IBOutlet weak var tableViewList: UITableView!
    @IBOutlet weak var tableCellCustom: UITableViewCell!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewList.delegate = self
        tableViewList.dataSource = self
        arrayPeople.append(Person(name: "João", image: "joao.png", email: "joao@email.com"))
        arrayPeople.append(Person(name: "Maria", image: "maria.png", email: "maria@email.com"))
        arrayPeople.append(Person(name: "José", image: "jose.png", email: "jose@email.com"))
        arrayPeople.append(Person(name: "Carlos", image: "carlos.jpeg", email: "carlos@email.com"))
        arrayPeople.append(Person(name: "Pedro", image: "pedro.jpg", email: "pedro@email.com"))
    }


}
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let person = arrayPeople[indexPath.row]
        print("Programador(a): \(person.name)")
        tableViewList.deselectRow(at: indexPath, animated: true)
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayPeople.count
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        arrayPeople.remove(at: indexPath.row)
        tableViewList.reloadData()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomCellTableViewCell
        
        cell.setup(person: arrayPeople[indexPath.row])
        
        return cell
    }
    
    
}
