//
//  ViewController.swift
//  10.09_DesafioHotel
//
//  Created by Dominique Nascimento Bezerra on 09/10/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myCheckInDatePicker: UIDatePicker!
    @IBOutlet weak var myCheckOutDatePicker: UIDatePicker!
    @IBOutlet weak var stateSwitch: UISwitch!
    
    var parqueDasFlores = ParqueDasFlores(precoSemana: 110, precoSemanaFidelidade: 80, precoFinalDeSemana: 90, precoFinalDeSemanaFidelidade: 80, classificacao: 3)
    var jardimBotanico = JardimBotanico(precoSemana: 160, precoSemanaFidelidade: 110, precoFinalDeSemana: 60, precoFinalDeSemanaFidelidade: 50, classificacao: 4)
    var marAtlantico = MarAtlantico(precoSemana: 220, precoSemanaFidelidade: 100, precoFinalDeSemana: 150, precoFinalDeSemanaFidelidade: 40, classificacao: 5)

    
    @IBAction func actionCheckInDatePicker(_ sender: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = DateFormatter.Style.short
        dateFormatter.dateFormat = "EEEE"
        var strDateIn = dateFormatter.string(from: sender.date)
        print(strDateIn)
    }
    
    @IBAction func actionCheckOutDatePicker(_ sender: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = DateFormatter.Style.short
        dateFormatter.dateFormat = "EEEE"
        let strDateOut = dateFormatter.string(from: sender.date)
        print(strDateOut)
    }
    
    @IBAction func actionChangedSwitch(_ sender: Any) {
        switch stateSwitch.isOn {
        case true:
            print("Fidelidade")
        default:
            print("Regular")
        }
    }
    
//    func isWeekend() -> Bool {
//        if strDateIn != "Saturday" || strDateIn != "Sunday" {
//            if strDateOut != "Saturday" || strDateOut != "Sunday" {
//                return false
//            }
//        } else {
//            return true
//        }
//    }
    
    @IBAction func actionShowBestHotel(_ sender: Any) {
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

