//
//  ModelsYearController.swift
//  18.11_FipeXIB
//
//  Created by Dominique Nascimento Bezerra on 18/11/20.
//

import Foundation
import Alamofire

class ModelsYearController {
    var arrayYears = [Year?]()
    
    func saveYears(arrayYears: [Year]) {
        self.arrayYears = arrayYears
    }
    
    func loadData(brand: Brand?, models: CarModels?, onLoadData: @escaping () -> Void) {
        if let brand = brand, let id = brand.codigo, let model = models, let modelId = model.codigo {
            AF.request("https://parallelum.com.br/fipe/api/v1/carros/marcas/\(id)/modelos/\(modelId)/anos").responseJSON  { response in
//                print(response)
                if let json = response.value as? [[String: Any]]
//                   , let arrayDictionary = json["modelos"] as? [[String: Any]]
                {
                    var arrayYears = [Year]()
                    for dictionary in json {
                        let loadedData = Year(fromDictionary: dictionary)
                        arrayYears.append(loadedData)
                    }
                    print(arrayYears)
                    self.saveYears(arrayYears: arrayYears)
                    print(arrayYears)
                    onLoadData()
                }
            }
        }
    }
}
