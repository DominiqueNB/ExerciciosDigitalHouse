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
        
        arrayAnimals.append(Animal(name: "Cristal", breed: "spitz", weight: "9.5", species: "Dog"))
        arrayAnimals.append(Animal(name: "Meggy", breed: "poodle-lata", weight: "8", species: "Dog"))
        arrayAnimals.append(Animal(name: "Leon", breed: "metido", weight: "5", species: "Cat"))
        arrayAnimals.append(Animal(name: "Lucky", breed: "metido", weight: "4", species: "Cat"))
        arrayAnimals.append(Animal(name: "Bob", breed: "shitzu", weight: "7", species: "Dog"))
        arrayAnimals.append(Animal(name: "Puppy", breed: "poodle", weight: "8", species: "Dog"))
        arrayAnimals.append(Animal(name: "Boris", breed: "vira-lata", weight: "12", species: "Dog"))
        arrayAnimals.append(Animal(name: "Negão", breed: "labrador", weight: "15", species: "Dog"))
        arrayAnimals.append(Animal(name: "Polo", breed: "doberman", weight: "11", species: "Dog"))
        arrayAnimals.append(Animal(name: "Pintada", breed: "perigosa", weight: "28", species: "Onça"))
    }


}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let detailView = UIStoryboard(name: "DetailView", bundle: nil).instantiateInitialViewController() as? DetailViewController {
            present(detailView, animated: true, completion: nil)
            detailView.settedLable(animal: arrayAnimals[indexPath.row])
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayAnimals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalsCell", for: indexPath) as! AnimalsCell
        cell.setup(animal: arrayAnimals[indexPath.row])
        return cell
    }
    
    
}
