//
//  ViewController.swift
//  27.09 Table View
//
//  Created by Dominique Nascimento Bezerra on 27/09/20.
//

import UIKit

class ViewController: UIViewController {

    var arrayBooks = ["Harry Potter Collection", "Jogos Vorazes", "Cronicas de Gelo e Fogo", "A Torre Negra", "Cronicas de Narnia", "Dexter"]
    
    @IBOutlet weak var tableViewList: UITableView!
    @IBOutlet weak var textFieldAdd: UITextField!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableViewList.delegate = self
        tableViewList.dataSource = self
        textFieldAdd.delegate = self
    }
    
    func addToList(newBook: String) {
        if arrayBooks.contains(newBook) {
            textFieldAdd.resignFirstResponder()
        }
        else {
            arrayBooks.append(newBook)
            tableViewList.reloadData()
        }
    }

    func openView() {
        if let viewDetail = UIStoryboard(name: "BookDetail", bundle: nil).instantiateInitialViewController() as? BookDetailViewController {
            present(viewDetail, animated: true, completion: nil)
        }
    }

}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let book = arrayBooks[indexPath.row]
        print("Livro: \(book)")
        openView()
        
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let newBook = textFieldAdd.text {
            addToList(newBook: newBook)
            textFieldAdd.resignFirstResponder()
            return true
        }
        else {
            print("recebeu nil")
            return false
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayBooks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = arrayBooks[indexPath.row]
        return cell
    }
    
    
}
