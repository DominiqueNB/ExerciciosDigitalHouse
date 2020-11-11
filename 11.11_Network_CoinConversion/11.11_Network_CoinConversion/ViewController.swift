//
//  ViewController.swift
//  11.11_Network_CoinConversion
//
//  Created by Dominique Nascimento Bezerra on 11/11/20.
//

import UIKit
import Alamofire

enum CurrencyType: String {
    case BRL = "BRL"
    case USD = "USD"
}

class ViewController: UIViewController {
    
    var baseValue: Double = 1
    var currencyValue: Double = 1
    var selectedCurrency: CurrencyType = .BRL
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var labelValue: UILabel!
    @IBOutlet weak var labelCurrency: UILabel!
    @IBOutlet var buttonBaseCurrency: UIButton!
    @IBOutlet var buttonConversionCurrency: UIButton!
    @IBOutlet var buttonConvert: UIButton!
    
    func loadData(type: CurrencyType) {
        if type == CurrencyType.USD {
            AF.request("https://api.exchangeratesapi.io/latest?symbols=USD,BRL&base=USD").responseJSON(completionHandler: {response in
                if let dictionary = response.value as? [String: Any] {
                    if let rates = dictionary["rates"] as? [String: Double] {
                        self.currencyValue = rates["BRL"]!
                        var currentValue = Double(self.textField.text!)
                        currentValue! *= self.currencyValue
                        self.labelValue.text = String(format: "%.02f", currentValue!)
                        self.labelCurrency.text = "R$"
                    }
                }
            })
        }
        if type == CurrencyType.BRL {
            AF.request("https://api.exchangeratesapi.io/latest?symbols=USD,BRL&base=BRL").responseJSON(completionHandler: {response in
                if let dictionary = response.value as? [String: Any] {
                    if let rates = dictionary["rates"] as? [String: Double] {
                        self.currencyValue = rates["USD"]!
                        var currentValue = Double(self.textField.text!)
                        currentValue! *= self.currencyValue
                        self.labelValue.text = String(format: "%.02f", currentValue!)
                        self.labelCurrency.text = "U$"
                    }
                }
            })
        }
    }
    @IBAction func buttonBaseCurrency(_ sender: Any) {
        actionSheetSelectCurrency()
    }
    @IBAction func buttonConversionCurrency(_ sender: Any) {
        actionSheetSelectCurrency()
    }
    
    func actionSheetSelectCurrency() {
        let alert = UIAlertController(title: "Atenção",
                                      message: "Selecione a moeda base",
                                      preferredStyle: .alert)
        
        
        alert.addAction(UIAlertAction(title: "BRL - Real", style: .default, handler: { (action) in
            self.selectedCurrency = CurrencyType.BRL
        }))
        
        alert.addAction(UIAlertAction(title: "USD - Dólar Americano", style: .default, handler: { (action) in
            self.selectedCurrency = CurrencyType.USD
        }))
        
        alert.addAction(UIAlertAction(title: "Cancelar", style: .default, handler: { (action) in
            print("Apertou Cancel")
        }))
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func buttonConvert(_ sender: Any) {
        self.loadData(type: selectedCurrency)
        textField.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
        buttonBaseCurrency!.layer.cornerRadius = 10
        buttonConversionCurrency!.layer.cornerRadius = 10
        buttonConvert!.layer.cornerRadius = 10
    }
    
    
}



extension ViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        //        return textField.text
    }
}
