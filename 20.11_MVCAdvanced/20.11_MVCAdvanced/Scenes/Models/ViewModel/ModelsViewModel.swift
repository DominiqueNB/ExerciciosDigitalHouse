//
//  ModelsViewModel.swift
//  20.11_MVCAdvanced
//
//  Created by Dominique Nascimento Bezerra on 30/11/20.
//

import Foundation
import Alamofire

class ModelsViewModel: ViewModelProtocol {
    
    var arrayModels = [Model]()
    
    var selectedBrand: Brand
    
    var apiManager = APIManager()
    
    init(brand: Brand) {
        selectedBrand = brand
    }
    
    func loadData(onComplete: @escaping (Bool) -> Void) {
        apiManager.request(url: "https://parallelum.com.br/fipe/api/v1/carros/marcas/\(selectedBrand.id!)/modelos") { (json, jsonArray, string) in
            if let json = json {
                if let jsonModels = json["modelos"] as? [[String: Any]] {
                    var models = [Model]()
                    for item in jsonModels {
                        models.append(Model(fromDictionary: item))
                    }
                    self.arrayModels = models
                    onComplete(true)
                    return
                }
                onComplete(false)
            }
        }
        
    }
    
    func getNumberOfRows() -> Int {
        return arrayModels.count
    }
    
    func getNextController(index: Int) -> UIViewController {
        let nextController =  ModelYearViewModel(brand: selectedBrand, model: arrayModels[index])
        return ViewController.getView(viewModel: nextController)
    }
    
    func getTitleForCell(at index: Int) -> String {
        return arrayModels[index].name
    }
    
    func getViewTitle() -> String {
        return "Modelos \(selectedBrand.name!)"
    }
}
