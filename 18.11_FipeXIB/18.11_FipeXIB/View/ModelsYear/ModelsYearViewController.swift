//
//  ModelsYearViewController.swift
//  18.11_FipeXIB
//
//  Created by Dominique Nascimento Bezerra on 18/11/20.
//

import UIKit

class ModelsYearViewController: UIViewController {

    @IBOutlet weak var tableViewModelsYear: UITableView!
    var controller = ModelsYearController()
    var carModel = CarModels()
    var modelBrand = Brand()
    var car = Car()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableViewModelsYear.register(UINib(nibName: "ModelsYearCell", bundle: nil), forCellReuseIdentifier: "ModelsYearCell")
        
        tableViewModelsYear.delegate = self
        tableViewModelsYear.dataSource = self
        
        
        let onLoadData = {
            DispatchQueue.main.async {
                self.tableViewModelsYear.reloadData()
            }
        }
        
        controller.loadData(brand: modelBrand, models: carModel, onLoadData: onLoadData)
    }
    

}
extension ModelsYearViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let carDetail = UIStoryboard(name: "CarDetail", bundle: nil).instantiateInitialViewController() as? CarDetailViewController {
            if let yearModel = controller.arrayYears[indexPath.row] {
                carDetail.carModel = carModel
                carDetail.modelBrand = modelBrand
                carDetail.modelYear = yearModel
            }
            navigationController?.pushViewController(carDetail, animated: true)
        }
    }
}

extension ModelsYearViewController:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return controller.arrayYears.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ModelsYearCell") as! ModelsYearCell
        cell.setupCell(year: controller.arrayYears[indexPath.row]!)
        return cell

    }
    
    
}
