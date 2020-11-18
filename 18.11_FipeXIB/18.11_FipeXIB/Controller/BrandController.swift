//
//  BrandController.swift
//  18.11_FipeXIB
//
//  Created by Dominique Nascimento Bezerra on 18/11/20.
//

import Foundation
import Alamofire

class BrandController {
    var arrayBrands = [Brand?]()
    
    func saveBrands(arrayBrands: [Brand]) {
        self.arrayBrands = arrayBrands
    }
    
    func loadData(onLoadData: @escaping () -> Void) {
        AF.request("https://parallelum.com.br/fipe/api/v1/carros/marcas").responseJSON  { response in
//            print(response)
            if let arrayDictionary = response.value as? [[String: Any]] {
                var arrayBrands = [Brand]()
                for dictionary in arrayDictionary {
                    let loadedData = Brand(fromDictionary: dictionary)
                    arrayBrands.append(loadedData)
                    
                }
//                print(arrayBrands)
                self.saveBrands(arrayBrands: arrayBrands)
                onLoadData()
            }
        }
        
    }
    
    
}
