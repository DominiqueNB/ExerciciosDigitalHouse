//
//  ViewController.swift
//  02.12_DataBase_Fipe
//
//  Created by Dominique Nascimento Bezerra on 02/12/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    var viewModel = ViewModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UINib(nibName: "BrandCell", bundle: nil), forCellReuseIdentifier: "BrandCell")
        
        loadData()
        
        
    }

    func loadData() {
        viewModel.loadData { success in
            self.tableView.reloadData()
        }
    }

}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alert = UIAlertController(title: "Marcar como Favorita", message: "Deseja marcar esta marca como favorita?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Sim", style: .default, handler: {_ in
            print(self.viewModel.arrayBrands[indexPath.row].name)
            let brand = self.viewModel.arrayBrands[indexPath.row]
            if let favorite = brand.isFavorite {
                print(brand)
            } else {
                brand.identifier = brand.id
                brand.isFavorite = true
                brand.saveData()
                tableView.reloadData()
            }
            
        }))
        alert.addAction(UIAlertAction(title: "Não", style: .default, handler: {_ in
            print("N")
        }))
        present(alert, animated: true)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.arrayBrands.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BrandCell") as! BrandCell
        cell.setupCell(brand: viewModel.arrayBrands[indexPath.row])
        return cell
    }
    
    
}
