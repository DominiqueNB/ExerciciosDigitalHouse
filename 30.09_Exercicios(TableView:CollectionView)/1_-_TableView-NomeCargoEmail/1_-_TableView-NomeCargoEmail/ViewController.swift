//
//  ViewController.swift
//  1_-_TableView-NomeCargoEmail
//
//  - Tenha uma lista (tableView) com 15 pessoas.
//  - Cada célula (linha) deve ter o nome, cargo e email de uma pessoa.
//  - Quando tocar numa celula, deve abrir uma tela em modal, nessa tela deve haver um botão de fechar e um label com o nome da pessoa.
//
//  Created by Dominique Nascimento Bezerra on 30/09/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchBarTop: UISearchBar!
    @IBOutlet weak var tableViewPersonList: UITableView!
    
    var arrayPerson = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewPersonList.delegate = self
        tableViewPersonList.dataSource = self
        
        arrayPerson.append(Person(name: "Icaro José", role: "Gerente", email: "icaro@email.com"))
        arrayPerson.append(Person(name: "Alexandre José", role: "FJavascript Developer", email: "alexandre@email.com"))
        arrayPerson.append(Person(name: "Dominique Maria", role: "Mobile iOS Developer", email: "dominique@email.com"))
        arrayPerson.append(Person(name: "Cristal Maria", role: "Caçadora de barata", email: "cristal@email.com"))
        arrayPerson.append(Person(name: "Meggy Oswalda", role: "Guardiã", email: "meggy@email.com"))
        arrayPerson.append(Person(name: "Jessica Oswalda", role: "Marinheira", email: "jessica@email.com"))
        arrayPerson.append(Person(name: "João José", role: "Back-end Developer", email: "joao@email.com"))
        arrayPerson.append(Person(name: "Maria Edna", role: "Dona de tudo", email: "edna@email.com"))
        arrayPerson.append(Person(name: "José Neidio", role: "Instrutor de SMS", email: "email@email.com"))
        arrayPerson.append(Person(name: "Xcode Oswaldo", role: "Criador de problema", email: "email@email.com"))
        arrayPerson.append(Person(name: "Macbook José", role: "Gastador de $", email: "email@email.com"))
        arrayPerson.append(Person(name: "Casa Velha", role: "Sem solução", email: "email@email.com"))
        arrayPerson.append(Person(name: "Joana Clementina", role: "Analista de dados", email: "email@email.com"))
        arrayPerson.append(Person(name: "Lixeira da Silva", role: "Auxiliar de serviços gerais", email: "email@email.com"))
        arrayPerson.append(Person(name: "Lampada Oliveira", role: "Geradora de iluminação", email: "email@email.com"))
    }


}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let detailView = UIStoryboard(name: "DetailPerson", bundle: nil).instantiateInitialViewController() as? DetailPersonViewController {
            present(detailView, animated: true, completion: nil)
            tableView.deselectRow(at: indexPath, animated: true)
            detailView.setPerson(person: arrayPerson[indexPath.row])
        }
        
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayPerson.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonCell", for: indexPath) as! PersonCell
        cell.setup(person: arrayPerson[indexPath.row])
        return cell
    }

    
}
