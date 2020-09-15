//
//  ViewController.swift
//  UsuarioESenha(TextField e Delegate)
//
//  Created by Dominique Nascimento on 14/09/20.
//  Copyright © 2020 Dominique Nascimento. All rights reserved.
//

import UIKit

class Usuario {
    var email: String
    var senha: String
    
    init(email: String, senha: String) {
        self.email = email
        self.senha = senha
    }
}

class ViewController: UIViewController {

    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldSenha: UITextField!
    private var usuarios = [Usuario]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textFieldEmail.delegate = self
        textFieldSenha.delegate = self
    }
    
    func validaInformacoes() -> Bool{
        if textFieldEmail.text == nil || textFieldEmail.text!.isEmpty {
            print("Email Inv")
            print(alerta(campo: "email"))
            return false
        }
        else if textFieldSenha.text == nil || textFieldSenha.text!.isEmpty {
            print("Senha Inv")
            print(alerta(campo: "senha"))
            return false
        }
        return true
    }
    
    func incluirUsuario(email: String, senha: String) {
        if let email = textFieldEmail.text, !email.isEmpty {
            if let senha = textFieldEmail.text, !senha.isEmpty {
                let usuario = Usuario(email: email, senha: senha)
                usuarios.append(usuario)
            }
        }
    }
    
    func isUsuarioCadastrado(usuario: Usuario) -> Bool {
        for item in usuarios {
            if item.email == usuario.email {
                return true
            }
        }
        return false
    }
    
    func alerta(campo: String){
        let alert = UIAlertController(title: "Atenção", message: "Falta \(campo)", preferredStyle: .alert)

        let okAction = UIAlertAction(title: "OK", style: .cancel) { (UIAlertAction) in
        }
        alert.addAction(okAction)
        self.present(alert, animated: true) {
           
        }
    }
    
//    func carregarBotao() {
//        if isUsuarioCadastrado(usuario: usuario.email) {
//
//        }
//    }
    
//    verificar se tem usuarios no arrayUsuarios, criar função para verificar, metodo para realçar a cor do textfield
    
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == textFieldEmail {
            textFieldSenha.becomeFirstResponder()
        } else {
            if validaInformacoes() {
                textField.resignFirstResponder()
            }
        }
        return true
    }
}
