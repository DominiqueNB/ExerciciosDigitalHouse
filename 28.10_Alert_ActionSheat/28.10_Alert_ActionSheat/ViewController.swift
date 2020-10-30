//
//  ViewController.swift
//  28.10_Alert_ActionSheat
//
//  Created by Dominique Nascimento Bezerra on 28/10/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func openActionSheet() {
            let alert = UIAlertController(title: "Atenção",
                                          message: "Escolha a opção",
                                          preferredStyle: .actionSheet)
            alert.addAction(UIAlertAction(title: "Coxinha", style: .default, handler: { (action) in
                print("Coxinha")
            }))
            alert.addAction(UIAlertAction(title: "Kibe", style: .default, handler: { (action) in
                print("Kibe")
            }))
            alert.addAction(UIAlertAction(title: "Risoles", style: .default, handler: { (action) in
                print("Risoles")
            }))
            alert.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: { (action) in
                print("Cancelar")
            }))
            alert.addAction(UIAlertAction(title: "Nenhuma, ainda é cedo", style: .destructive, handler: { (action) in
                print("Nenhuma")
            }))
        
        if let popoverController = alert.popoverPresentationController {
          popoverController.sourceView = self.view
          popoverController.sourceRect = CGRect(x: self.view.bounds.midX, y: self.view.bounds.midY, width: 0, height: 0)
        }
            present(alert, animated: true, completion: nil)
    }

}


