//
//  ViewModel.swift
//  02.12_DataBase_Fipe
//
//  Created by Dominique Nascimento Bezerra on 02/12/20.
//

import Foundation

class ViewModel {
    
    var arrayBrands = [Brand]()
    var apiManager = APIManager()
 
    func loadData(onComplete: @escaping (Bool) -> Void) {
        apiManager.request(url: "https://parallelum.com.br/fipe/api/v1/carros/marcas") { (json, jsonArray, string) in
            if let jsonArray = jsonArray {
                var brands = [Brand]()
                for item in jsonArray {
                    var brand = Brand(fromDictionary: item)
                    if let brandResult = Brand.getObjectWithId(brand.id) as? Brand {
                        brands.append(brandResult)
                    } else {
                        brands.append(brand)
                    }
                }
                self.arrayBrands = brands
                onComplete(true)
                return
            }
            onComplete(false)
        }
        
    }
    
    
}
