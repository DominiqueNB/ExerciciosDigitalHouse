//
//  ViewController.swift
//  10.07_SegmentedControl_Enum
//
//  Created by Dominique Nascimento Bezerra on 07/10/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableViewList: UITableView?
    @IBOutlet weak var segmentedControlPessoaProgramador: UISegmentedControl!
    
    var arrayPessoa = [Pessoa]()
    var arrayProgramador = [Programador]()
    
    enum PersonOptions {
        static let pessoa = 0
        static let programador = 1
    }
    
    
    @IBAction func changedSegmentedControlPessoaProgramador(_ sender: Any) {
        switch segmentedControlPessoaProgramador.selectedSegmentIndex {
        case PersonOptions.pessoa:
            tableViewList?.reloadData()
        case PersonOptions.programador:
            tableViewList?.reloadData()
        default:
            print("==")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewList?.delegate = self
        tableViewList?.dataSource = self
        
        arrayPessoa.append(Pessoa(name: "Adalberto", photo: "pessoa.jpg"))
        arrayPessoa.append(Pessoa(name: "José", photo: "pessoa.jpg"))
        arrayPessoa.append(Pessoa(name: "Henrique", photo: "pessoa.jpg"))
        arrayPessoa.append(Pessoa(name: "Paulo", photo: "pessoa.jpg"))
        arrayPessoa.append(Pessoa(name: "Jorge", photo: "pessoa.jpg"))
        arrayPessoa.append(Pessoa(name: "Alexandre", photo: "pessoa.jpg"))
        arrayPessoa.append(Pessoa(name: "Narlei", photo: "pessoa.jpg"))
        arrayPessoa.append(Pessoa(name: "Mauro", photo: "pessoa.jpg"))
        arrayPessoa.append(Pessoa(name: "Michel", photo: "pessoa.jpg"))
        arrayPessoa.append(Pessoa(name: "Juan", photo: "pessoa.jpg"))
        arrayProgramador.append(Programador(name: "Maria", photo: "programador.jpg", cargo: "Developer"))
        arrayProgramador.append(Programador(name: "Joana", photo: "programador.jpg", cargo: "String"))
        arrayProgramador.append(Programador(name: "Jessica", photo: "programador.jpg", cargo: "String"))
        arrayProgramador.append(Programador(name: "Marcela", photo: "programador.jpg", cargo: "String"))
        arrayProgramador.append(Programador(name: "Luciana", photo: "programador.jpg", cargo: "String"))
        arrayProgramador.append(Programador(name: "Fernanda", photo: "programador.jpg", cargo: "String"))
        arrayProgramador.append(Programador(name: "Mizia", photo: "programador.jpg", cargo: "String"))
        arrayProgramador.append(Programador(name: "Aline", photo: "programador.jpg", cargo: "String"))
        arrayProgramador.append(Programador(name: "Taize", photo: "programador.jpg", cargo: "String"))
        arrayProgramador.append(Programador(name: "Paola", photo: "programador.jpg", cargo: "String"))
        
    }


}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedIndex = self.segmentedControlPessoaProgramador.selectedSegmentIndex
        switch selectedIndex {
        case PersonOptions.pessoa:
            if let viewDetail = UIStoryboard(name: "PessoaView", bundle: nil).instantiateInitialViewController() as? PessoaViewController {
                present(viewDetail, animated: true, completion: nil)
            }
        case PersonOptions.programador:
            if let viewDetail = UIStoryboard(name: "ProgramadorView", bundle: nil).instantiateInitialViewController() as? ProgramadorViewController {
                navigationController?.pushViewController(viewDetail, animated: true)
            }
        default:
            print ("--")
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let selectedIndex = self.segmentedControlPessoaProgramador.selectedSegmentIndex
        switch selectedIndex {
        case PersonOptions.pessoa:
            return arrayPessoa.count
        case PersonOptions.programador:
            return arrayProgramador.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PessoaProgramadorCell") as! PessoaProgramadorCell
        let selectedIndex = self.segmentedControlPessoaProgramador.selectedSegmentIndex
        switch selectedIndex {
        case PersonOptions.pessoa:
            cell.setupCellPessoa(pessoa: arrayPessoa[indexPath.row])
        case PersonOptions.programador:
            cell.setupCellProgramador(programador: arrayProgramador[indexPath.row])
        default:
            print("-")
        }
        return cell
    }
    
    
}
