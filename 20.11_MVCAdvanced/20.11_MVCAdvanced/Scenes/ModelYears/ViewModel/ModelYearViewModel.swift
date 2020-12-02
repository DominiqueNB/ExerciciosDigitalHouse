//
//  ModelYearViewModel.swift
//  20.11_MVCAdvanced
//
//  Created by Dominique Nascimento Bezerra on 30/11/20.
//

import Foundation
import Alamofire

class ModelYearViewModel: ViewModelProtocol {
    
    var apiManager = APIManager()
    
    var selectedBrand: Brand
    var selectedModel: Model
    
    init(brand: Brand, model: Model) {
        selectedBrand = brand
        selectedModel = model
    }
    
    var arrayYears = [ModelYear]()
    
    func loadData(onComplete: @escaping (Bool) -> Void) {
        apiManager.request(url: "https://parallelum.com.br/fipe/api/v1/carros/marcas/\(selectedBrand.id!)/modelos/\(selectedModel.id!)/anos") { (json, jsonArray, string) in
            if let jsonYears = jsonArray {
                var years = [ModelYear]()
                for item in jsonYears {
                    years.append(ModelYear(fromDictionary: item))
                }
                self.arrayYears = years
                onComplete(true)
                return
            }
            onComplete(false)
        }
    }
    
    func getNumberOfRows() -> Int {
        return arrayYears.count
    }
    
    func getNextController(index: Int) -> UIViewController {
        let nextController =  CarViewModel(brand: selectedBrand, model: selectedModel, year: arrayYears[index])
        nextController.selectedBrand = selectedBrand
        nextController.selectedModel = selectedModel
        nextController.selectedYear = arrayYears[index]
        return CarDetailViewController.getView(viewModel: nextController)
    }
    
    func getTitleForCell(at index: Int) -> String {
        return arrayYears[index].name
    }
    
    func getViewTitle() -> String {
        return "Ano - \(selectedModel.name!)"
    }
}
