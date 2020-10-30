//
//  ViewController2.swift
//  30.10_iBuy
//
//  Created by Dominique Nascimento Bezerra on 30/10/20.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet var tableViewSettings: UITableView?
    var arrayOptions = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewSettings?.delegate = self
        tableViewSettings?.dataSource = self
        
        arrayOptions.append("Avaliar o app")
        arrayOptions.append("Suporte")
        arrayOptions.append("Relatar um problema por email")
    }
    
}

extension ViewController2: UITableViewDelegate {
    
}

extension ViewController2: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ConfigurationCell", for: indexPath) as? ConfigurationCell!
        cell.setupLabel(name: arrayOptions[indexPath.row])
        return cell
    }
    
    
}
