//
//  CarDetailViewController.swift
//  18.11_FipeXIB
//
//  Created by Dominique Nascimento Bezerra on 18/11/20.
//

import UIKit

class CarDetailViewController: UIViewController {
    
    var controller = CarController()
    var modelYear = Year()
    var modelBrand = Brand()
    var carModel = CarModels()
    var car = Car()
    
    
    @IBOutlet weak var labelCarName: UILabel!
    @IBOutlet weak var labelCarYear: UILabel!
    @IBOutlet weak var labelCarBrand: UILabel!
    @IBOutlet weak var labelCarPrice: UILabel!
    
    func setComponents(car: Car) {
        
        labelCarName.text = car.modelo
        labelCarYear.text = String(car.anoModelo)
        labelCarBrand.text = car.marca
        labelCarPrice.text = car.valor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        let onLoadData = () {
//            DispatchQueue.main.async {
//                self.setComponents(car: self.car)
//
//            }
//        }
        
        controller.loadData(brand: modelBrand, models: carModel, year: modelYear, onLoadData: { (car) in
            self.setComponents(car: car)
            
        })
    }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

//}
