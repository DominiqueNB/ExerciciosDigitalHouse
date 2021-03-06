//
//  ViewController.swift
//  10.15_CidadeEstadoPais
//
//  Created by Dominique Nascimento Bezerra on 15/10/20.
//

import UIKit

class ViewController: UIViewController {

    var arrayCidades = [Cidade]()
    var currentCityArray = [Cidade]()
    
    @IBOutlet var searchBar: UISearchBar!
    @IBOutlet var tableViewCidades: UITableView!
    @IBOutlet var pickerView: UIPickerView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewCidades.delegate = self
        tableViewCidades.dataSource = self
        pickerView.delegate = self
        pickerView.dataSource = self
        
        arrayCidades.append(Cidade(name: "São Paulo", estado: "SP", pais: "Brasil"))
        arrayCidades.append(Cidade(name: "Miami", estado: "Florida", pais: "United States"))
        arrayCidades.append(Cidade(name: "Paris", estado: "Paris", pais: "France"))
        arrayCidades.append(Cidade(name: "Madrid", estado: "Madri", pais: "Spain"))
        arrayCidades.append(Cidade(name: "São Paulo", estado: "SP", pais: "Brasil"))
        arrayCidades.append(Cidade(name: "Miami", estado: "Florida", pais: "United States"))
        arrayCidades.append(Cidade(name: "Paris", estado: "Paris", pais: "France"))
        arrayCidades.append(Cidade(name: "Madrid", estado: "Madri", pais: "Spain"))
        arrayCidades.append(Cidade(name: "São Paulo", estado: "SP", pais: "Brasil"))
        arrayCidades.append(Cidade(name: "Miami", estado: "Florida", pais: "United States"))
        arrayCidades.append(Cidade(name: "Paris", estado: "Paris", pais: "France"))
        arrayCidades.append(Cidade(name: "Madrid", estado: "Madri", pais: "Spain"))
        
        currentCityArray = arrayCidades
    }


}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentCityArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CityCell", for: indexPath) as! CityCell
        cell.setupLabel(city: currentCityArray[indexPath.row])
        return cell
    }
    
    
}

extension ViewController: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            currentCityArray = arrayCidades.filter({ city -> Bool in
                if searchText.isEmpty { return true }
                return city.name.lowercased().contains(searchText.lowercased()) || city.estado.lowercased().contains(searchText.lowercased()) || city.pais.lowercased().contains(searchText.lowercased())
            })
        tableViewCidades.reloadData()
    }
}

extension ViewController: UIPickerViewDelegate {
    
}

extension ViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return 0
        }
        
        if component == 1 {
            return 0
        }
        else {
            return 0
        }
    }
    
    
}
