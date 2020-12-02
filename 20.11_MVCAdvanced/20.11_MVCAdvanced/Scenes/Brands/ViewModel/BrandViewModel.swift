//
//  BrandViewModel.swift
//  20.11_MVCAdvanced
//
//  Created by Dominique Nascimento Bezerra on 30/11/20.
//

import Foundation
import Alamofire

class BrandViewModel:  ViewModelProtocol {
    
    var arrayBrands = [Brand]()
    var apiManager = APIManager()
    
//    func url
    
    func loadData(onComplete: @escaping (Bool) -> Void) {
        apiManager.request(url: "https://parallelum.com.br/fipe/api/v1/carros/marcas") { (json, jsonArray, string) in
            if let jsonArray = jsonArray {
                var brands = [Brand]()
                for item in jsonArray {
                    brands.append(Brand(fromDictionary: item))
                }
                self.arrayBrands = brands
                onComplete(true)
                return
            }
            onComplete(false)
        }
        
    }
    
    func getNumberOfRows() -> Int {
        return arrayBrands.count
    }
    
    func getNextController(index: Int) -> UIViewController {
        let controller = ModelsViewModel(brand: arrayBrands[index])
        return ViewController.getView(viewModel: controller)
    }
    
    func getTitleForCell(at index: Int) -> String {
        return arrayBrands[index].name
    }
    
    func getViewTitle() -> String {
        return "Marcas"
    }
}
