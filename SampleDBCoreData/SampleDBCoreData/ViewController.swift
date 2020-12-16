//
//  ViewController.swift
//  SampleDBCoreData
//
//  Created by Dominique Nascimento Bezerra on 09/12/20.
//

import UIKit

class ViewController: UIViewController {

    var viewModel = ViewModel()
    
    @IBOutlet var tableViewTasks: UITableView!
    
    func alert(alertType: String, taskName: String, task: Task) {
        let alert = UIAlertController(title: "Tarefa", message: "Editar?", preferredStyle: .alert)
        
        alert.addTextField(configurationHandler: { textField in
            textField.placeholder = "Tarefa"
            textField.text = taskName
            let addButton = UIAlertAction(title: "Editar", style: .default, handler: { _ in
                if let title = textField.text {
                    self.viewModel.editTask(task: task, taskName: title, taskState: task.isConcluded)
                }
                self.tableViewTasks.reloadData()
            })
            alert.addAction(addButton)
        })
        
        
        
        alert.addAction(UIAlertAction(title: "Marcar como \(alertType)", style: .default, handler: {_ in
            var isConcluded = !task.isConcluded
            self.viewModel.editTask(task: task, taskName: taskName, taskState: isConcluded)
            self.tableViewTasks.reloadData()
        }))
        
        alert.addAction(UIAlertAction(title: "Excluir", style: .destructive, handler: {_  in
            self.viewModel.deleteTask(task: task)
            self.tableViewTasks.reloadData()
        }))
        
        alert.addAction(UIAlertAction(title: "Cancelar", style: .default, handler: {_ in
        }))
        present(alert, animated: true)
    }
    
    func setStyle(cell: UITableViewCell) {
        cell.textLabel?.shadowColor = UIColor.green
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewTasks.delegate = self
        tableViewTasks.dataSource = self
        
        viewModel.loadArrayTasks()
        
       
    }
    @IBAction func addNewTask(_ sender: Any) {
        let alert = UIAlertController(title: "Adicionar", message: "Nova Tarefa", preferredStyle: .alert)
        alert.addTextField(configurationHandler: { textField in
            textField.placeholder = "Tarefa"
//            textField.tag = 10
        })
        
        let cancelButton = UIAlertAction(title: "Cancel", style: .default, handler: nil)
        let addButton = UIAlertAction(title: "OK", style: .default) { _ in
            if let textField = alert.textFields?.first, let text = textField.text {
                self.viewModel.saveNewTask(task: text, taskState: false)
                self.tableViewTasks.reloadData()
            }
        }
        
        alert.addAction(cancelButton)
        alert.addAction(addButton)
        present(alert, animated: true, completion: nil)
    }
    

}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        tableView.deselectRow(at: indexPath, animated: true)
        if let taskName = viewModel.arrayTasks[indexPath.row].name {
            if viewModel.arrayTasks[indexPath.row].isConcluded {
                self.alert(alertType: "Pendente", taskName: taskName, task: viewModel.arrayTasks[indexPath.row])
            } else {
                self.alert(alertType: "Concluído", taskName: taskName, task: viewModel.arrayTasks[indexPath.row])
            }
        }
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.arrayTasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = viewModel.arrayTasks[indexPath.row].name
        let state = viewModel.arrayTasks[indexPath.row].isConcluded
            if state {
                cell.backgroundColor = UIColor.green
            } else {
                cell.backgroundColor = UIColor.red
            }
//        cell.textLabel?.accessibilityIdentifier = "cell_\(indexPath.row)"
//        tableView.reloadData()
        return cell
    }
    
}
