//
//  CarViewModel.swift
//  20.11_MVCAdvanced
//
//  Created by Dominique Nascimento Bezerra on 30/11/20.
//

import Foundation
import Alamofire

class CarViewModel: ViewModelProtocol {
    
    
    var selectedBrand: Brand
    var selectedModel: Model
    var selectedYear: ModelYear
    
    var car: Car?
    
//    init(){
//        
//    }
    
    init(brand: Brand, model: Model, year: ModelYear) {
        selectedBrand = brand
        selectedModel = model
        selectedYear = year
    }
    
    var arrayTexts = [String]()
    
    func loadData(onComplete: @escaping (Bool) -> Void) {
        AF.request("https://parallelum.com.br/fipe/api/v1/carros/marcas/\(selectedBrand.id!)/modelos/\(selectedModel.id!)/anos/\(selectedYear.id!)").responseJSON { response in
        if let json = response.value as? [String: Any] {
            let car = Car(fromDictionary: json)
            var texts = [String]()
            texts.append(car.marca)
            texts.append(car.modelo)
            texts.append(car.valor)

            self.car = car
            self.arrayTexts = texts

            onComplete(true)
            return
        }
        onComplete(false)
        }

    }

    func getNumberOfRows() -> Int {
        return arrayTexts.count
    }

//    func getNextController(index: Int) -> UIViewController {
//        let nextController = CarViewModel(brand: selectedBrand, model: selectedModel, year: selectedYear)
//        return CarDetailViewController.getView(viewModel: nextController)
//    }

    func getTitleForCell(at index: Int) -> String {
        return arrayTexts[index]
    }

    func getViewTitle() -> String {
        return "\(selectedYear.name!)"
    }
}
