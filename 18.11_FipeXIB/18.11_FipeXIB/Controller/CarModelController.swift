//
//  CarModelController.swift
//  18.11_FipeXIB
//
//  Created by Dominique Nascimento Bezerra on 18/11/20.
//

import Foundation
import Alamofire

class CarModelController {
    var arrayModels = [CarModels?]()
    
    func saveCarModels(arrayModels: [CarModels]) {
        self.arrayModels = arrayModels
    }
    
    func loadData(brand: Brand?, onLoadData: @escaping () -> Void) {
        if let brand = brand, let id = brand.codigo {
            AF.request("https://parallelum.com.br/fipe/api/v1/carros/marcas/\(id)/modelos").responseJSON  { response in
//                print(response)
                if let json = response.value as? [String: Any], let arrayDictionary = json["modelos"] as? [[String: Any]] {
                    var arrayModels = [CarModels]()
                    for dictionary in arrayDictionary {
                        let loadedData = CarModels(fromDictionary: dictionary)
                        arrayModels.append(loadedData)
                    }
//                    print(arrayModels)
                    self.saveCarModels(arrayModels: arrayModels)
                    onLoadData()
                }
            }
        }
    }
}
