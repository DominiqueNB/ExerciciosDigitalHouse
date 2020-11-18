//
//  CarModelsViewController.swift
//  18.11_FipeXIB
//
//  Created by Dominique Nascimento Bezerra on 18/11/20.
//

import UIKit

class CarModelsViewController: UIViewController {

    @IBOutlet weak var tableViewCarModels: UITableView!
    var controller = CarModelController()
    var brandController = BrandController()
    var brand = Brand()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableViewCarModels.register(UINib(nibName: "CarModelsCell", bundle: nil), forCellReuseIdentifier: "CarModelsCell")
        
        tableViewCarModels.delegate = self
        tableViewCarModels.dataSource = self
        
        let onLoadData = {
            DispatchQueue.main.async {
                self.tableViewCarModels.reloadData()
            }
        }
        
        controller.loadData(brand: brand, onLoadData: onLoadData)
        
    }
    

}

extension CarModelsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let modelsYearscreen = UIStoryboard(name: "ModelsYear", bundle: nil).instantiateInitialViewController() as? ModelsYearViewController {
            if let yearModel = controller.arrayModels[indexPath.row] {
                modelsYearscreen.carModel = yearModel
                modelsYearscreen.modelBrand = brand
            }
            navigationController?.pushViewController(modelsYearscreen, animated: true)
        }
    }

}

extension CarModelsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return controller.arrayModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CarModelsCell") as! CarModelsCell
        cell.setupCell(carModel: controller.arrayModels[indexPath.row]!)
        return cell
    }
}
