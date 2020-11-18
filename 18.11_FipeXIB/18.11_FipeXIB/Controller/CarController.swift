//
//  CarController.swift
//  18.11_FipeXIB
//
//  Created by Dominique Nascimento Bezerra on 18/11/20.
//

import Foundation
import Alamofire

class CarController {
    
    var arrayCars = [Car?]()
    
    func saveCars(arrayCars: [Car?]) {
        self.arrayCars = arrayCars
    }
    
    func loadData(brand: Brand?, models: CarModels?, year: Year?, onLoadData: @escaping (Car) -> Void) {
        if let brand = brand, let id = brand.codigo, let model = models, let modelId = model.codigo, let year = year, let yearId = year.codigo {
            AF.request("https://parallelum.com.br/fipe/api/v1/carros/marcas/\(id)/modelos/\(modelId)/anos/\(yearId)").responseJSON  { response in
//                print(response)
                if let json = response.value as? [String: Any]
//                   , let arrayDictionary = json["modelos"] as? [[String: Any]]
                {
                    var arrayCars = [Car]()
                    let carData = Car(fromDictionary: json)
                    arrayCars.append(carData)
                    self.saveCars(arrayCars: arrayCars)
//                    print(arrayCars)
                    onLoadData(carData)
                }
            }
        }
    }
    
}
