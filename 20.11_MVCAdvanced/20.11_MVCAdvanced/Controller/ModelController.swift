//
//  ModelController.swift
//  20.11_MVCAdvanced
//
//  Created by Dominique Nascimento Bezerra on 20/11/20.
//

import Foundation
import Alamofire

class ModelController: ControllerProtocol {
    
    var arrayModels = [Model]()
    
    var selectedBrand: Brand

        init(brand: Brand) {
            selectedBrand = brand
        }

    func loadData(onComplete: @escaping (Bool) -> Void) {
        AF.request("https://parallelum.com.br/fipe/api/v1/carros/marcas/\(selectedBrand.id!)/modelos").responseJSON { response in
            if let json = response.value as? [String: Any], let jsonModels = json["modelos"] as? [[String: Any]] {
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
    
    func getNumberOfRows() -> Int {
        return arrayModels.count
    }
    
    func getNextController(index: Int) -> UIViewController {
        let nextController =  ModelYearController(brand: selectedBrand, model: arrayModels[index])
        return ViewController.getView(controller: nextController)
    }
    
    func getTitleForCell(at index: Int) -> String {
        return arrayModels[index].name
    }
    
    func getViewTitle() -> String {
        return "Modelos \(selectedBrand.name!)"
    }
    
    
    
}
