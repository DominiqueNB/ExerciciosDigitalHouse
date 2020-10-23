//
//  DetailViewController.swift
//  19.10_LoginESenhaClosure
//
//  Created by Dominique Nascimento Bezerra on 19/10/20.
//

import UIKit

class DetailViewController: UIViewController {

//    typealias onComplete = ((_ email: String, _ senha: String ) -> Void)?
    
    @IBOutlet var textFieldEmail: UITextField!
    @IBOutlet var textFieldSenha: UITextField!
    
    var onComplete: ((_ email: String, _ senha: String ) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func buttonRegister(_ sender: Any) {
        onComplete?(textFieldEmail.text!, textFieldSenha.text!)
        dismiss(animated: true, completion: nil)
    }
    
    func setCompletion(onComplete: @escaping (_ email: String, _ senha: String ) -> Void) {
        self.onComplete = onComplete
    }
}
