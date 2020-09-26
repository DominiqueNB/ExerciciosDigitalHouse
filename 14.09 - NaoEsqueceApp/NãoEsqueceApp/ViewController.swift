//
//  ViewController.swift
//  NãoEsqueceApp
//
//  Created by Alexandre Oliveira on 16/09/20.
//  Copyright © 2020 Dominique N Bezerra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldNome: UITextField!
    @IBOutlet weak var textFieldQuantidade: UITextField!
    
    @IBOutlet weak var tableViewList: UITableView!
//    @IBOutlet weak var labelIdentificacao: UILabel!
    @IBOutlet weak var buttonSalvar: UIButton!
    @IBOutlet weak var buttonLimpar: UIButton!
    @IBOutlet weak var buttonExcluir: UIButton!
//    @IBOutlet weak var labelExibicao: UILabel!
    
    
    var item = ItemRepositorio(arrayItem: [])
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textFieldNome.delegate = self
        textFieldQuantidade.delegate = self
        
        tableViewList.delegate = self
        tableViewList.dataSource = self
        
        
    }
    

    
    @IBAction func buttonSalvar(_ sender: UIButton) {
        if let nome = textFieldNome.text, let quantidade = textFieldQuantidade.text {
            item.cadastrar(nome: nome, quantidade: Int(quantidade)!)
            setLabelDeExibicao()
//            labelIdentificacao.text = String(nome) + ": " + String (quantidade)
            limpaCampos()
            atualizarButtonsELabels()
            tableViewList.reloadData()
            
        } else {
            print("Recebeu nil")
        }
    }
            
    @IBAction func buttonLimpar(_ sender: UIButton) {
        limpaCampos()
        atualizarButtonsELabels()
    }
    
    @IBAction func buttonExcluir(_ sender: UIButton) {
        item.excluirItem(nome: textFieldNome.text!)
        setLabelDeExibicao()
        limpaCampos()
        atualizarButtonsELabels()
        
    }
        
    func alerta(campo: String){
        let alert = UIAlertController(title: "Atenção", message: "Falta \(campo)", preferredStyle: .alert)

        let okAction = UIAlertAction(title: "OK", style: .cancel) { (UIAlertAction) in
        }
        alert.addAction(okAction)
        self.present(alert, animated: true) {
           
        }
    }
    
    func validaInformacoes() -> Bool{
        if textFieldNome.text == nil || textFieldNome.text!.isEmpty {
            print("Nome")
            print(alerta(campo: "nome"))
            return false
        }
        else if textFieldQuantidade.text == nil || textFieldQuantidade.text!.isEmpty {
            print("Quantidade")
            print(alerta(campo: "quantidade"))
            return false
        }
        return true
    }
    
    func limpaCampos() {
        textFieldNome.text = ""
        textFieldQuantidade.text = ""
    }
    
    func setLabelDeExibicao(){
        var labelToReturn = ""
        for product in item.arrayItem {
            labelToReturn += "\(product.quantidade): \(product.nome)\n"
        }
//        labelExibicao.text = labelToReturn
    }
    
    func atualizarButtonsELabels() {
        if let nome = textFieldNome.text, let quantidade = textFieldQuantidade.text {
            let itemCadastrado = item.get(nome: nome)
            if itemCadastrado != nil {
                buttonSalvar.setTitle("Salvar edição", for: .normal)
                buttonExcluir.setTitle("Excluir", for: .normal)
                textFieldQuantidade.text = String(itemCadastrado!.quantidade)
            }
            else {
                buttonSalvar.setTitle("Salvar", for: .normal)
                buttonExcluir.setTitle("", for: .normal)
            }
        }
    }

}
        
extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == textFieldNome {
            textFieldQuantidade.becomeFirstResponder()
            atualizarButtonsELabels()
        }
        else {
            if self.validaInformacoes() {
                textFieldQuantidade.resignFirstResponder()
            }
        }
        return true
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        textFieldNome.text = item.arrayItem[indexPath.row].nome
        textFieldQuantidade.text = String(item.arrayItem[indexPath.row].quantidade)
        atualizarButtonsELabels()
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return item.arrayItem.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "\(item.arrayItem[indexPath.row].nome)                     \(item.arrayItem[indexPath.row].quantidade)"
        return cell
    }
    
    
}
