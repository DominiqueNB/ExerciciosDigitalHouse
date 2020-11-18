//
//  ViewController.swift
//  18.11_FipeXIB
//
//  Created by Dominique Nascimento Bezerra on 18/11/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tableViewBrand: UITableView!
    var controller = BrandController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewBrand.register(UINib(nibName: "BrandCell", bundle: nil), forCellReuseIdentifier: "BrandCell")
        
        
        tableViewBrand.delegate = self
        tableViewBrand.dataSource = self
        
        let onLoadData = {
            DispatchQueue.main.async {
                self.tableViewBrand.reloadData()
            }
        }
        
        controller.loadData(onLoadData: onLoadData)
    }
    
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let modelList = UIStoryboard(name: "CarModels", bundle: nil).instantiateInitialViewController() as? CarModelsViewController {
            if let carModel = controller.arrayBrands[indexPath.row] {
                modelList.brand = carModel
            }
            navigationController?.pushViewController(modelList, animated: true)
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return controller.arrayBrands.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BrandCell") as! BrandCell
        cell.setupCell(brand: controller.arrayBrands[indexPath.row]!)
        return cell
    }
    
    
}
