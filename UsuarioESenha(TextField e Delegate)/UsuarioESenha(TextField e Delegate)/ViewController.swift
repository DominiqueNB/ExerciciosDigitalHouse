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

class UsuarioRepositorio {
    private var usuarios = [Usuario]()
    
    func incluirUsuario(email: String, senha: String) {
            let usuario = Usuario(email: email, senha: senha)
                usuarios.append(usuario)
                print("Cadastrado com sucesso!")
    }
    
    func isUsuarioCadastrado(email: String) -> Bool {
        for item in usuarios {
            if item.email == email{
                return true
            }
        }
        return false
        
    }
}



class ViewController: UIViewController {

    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldSenha: UITextField!
    var usuarioRepositorio = UsuarioRepositorio()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        textFieldEmail.delegate = self
        textFieldSenha.delegate = self
    }
    
    func limparCampos() {
        textFieldEmail.text = ""; textFieldSenha.text = "";
    }
    
    @IBAction func buttonCadastrar(_ sender: UIButton) {
        let isEmailCadastrado = usuarioRepositorio.isUsuarioCadastrado(email: textFieldEmail.text!)
        if !isEmailCadastrado {
            usuarioRepositorio.incluirUsuario(email: textFieldEmail.text!, senha: textFieldSenha.text!)
            self.view.backgroundColor = UIColor.green
            limparCampos()
        }
        else {
            self.view.backgroundColor = UIColor.red
            limparCampos()
            
            
        }
    }
    @IBAction func buttonEntrar(_ sender: UIButton) {
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

    
    func alerta(campo: String){
        let alert = UIAlertController(title: "Atenção", message: "Falta \(campo)", preferredStyle: .alert)

        let okAction = UIAlertAction(title: "OK", style: .cancel) { (UIAlertAction) in
        }
        alert.addAction(okAction)
        self.present(alert, animated: true) {
           
        }
    }
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


