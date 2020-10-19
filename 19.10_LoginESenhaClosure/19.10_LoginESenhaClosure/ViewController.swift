//
//  ViewController.swift
//  19.10_LoginESenhaClosure
//
//  Created by Dominique Nascimento Bezerra on 19/10/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textFieldEmail: UITextField!
    @IBOutlet var textFieldSenha: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func buttonSignUp(_ sender: Any) {
        if let viewDetail = UIStoryboard(name: "DetailView", bundle: nil).instantiateInitialViewController() as? DetailViewController {
            viewDetail.setCompletion { (email, senha) in
                self.textFieldEmail.text = email
                self.textFieldSenha.text = senha
            }
            present(viewDetail, animated: true, completion: nil)
        }
    }

    
}

