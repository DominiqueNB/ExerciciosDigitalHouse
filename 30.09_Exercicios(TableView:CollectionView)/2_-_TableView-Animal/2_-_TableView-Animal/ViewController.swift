//
//  ViewController.swift
//  2_-_TableView-Animal
//
//- Tenha uma lista (tableView) com 10 animais.
//- Cada célula (linha) deve ter o nome, raça, peso e espécie de um animal.
//- Quando tocar numa celula, deve abrir uma tela em modal, nessa tela deve haver um botão de fechar e um label com o nome do animal.
//
//  Created by Dominique Nascimento Bezerra on 30/09/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TableListAnimals: UITableView!
    var arrayAnimals = [Animal]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TableListAnimals.delegate = self
        TableListAnimals.dataSource = self
    }


}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayAnimals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalCell", for: indexPath) as! AnimalsCell
        return cell
    }
    
    
}
