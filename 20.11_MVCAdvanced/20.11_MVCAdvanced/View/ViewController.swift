//
//  ViewController.swift
//  20.11_MVCAdvanced
//
//  Created by Dominique Nascimento Bezerra on 20/11/20.
//

import UIKit

class ViewController: UIViewController {
    
    var controller: ControllerProtocol!

    @IBOutlet weak var tableViewList: UITableView!
    
    class func getView(controller: ControllerProtocol) -> ViewController {
        let viewDefault = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as! ViewController
        viewDefault.controller = controller
        return viewDefault
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewList.delegate = self
        tableViewList.dataSource = self
        
        loadData()
        
        title = controller.getViewTitle()
    }

    func loadData() {
        controller.loadData { success in
            self.tableViewList.reloadData()
        }
    }

}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let nextController = controller.getNextController(index: indexPath.row)
        
        navigationController?.pushViewController(nextController, animated: true)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return controller.getNumberOfRows()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = controller.getTitleForCell(at: indexPath.row)
        return cell
    }
    
    
}
