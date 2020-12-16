//
//  ViewController.swift
//  20.11_MVCAdvanced
//
//  Created by Dominique Nascimento Bezerra on 20/11/20.
//

import UIKit

class ViewController: UIViewController {
    
    var viewModel: ViewModelProtocol!

    @IBOutlet weak var tableViewList: UITableView!
    
    class func getView(viewModel: ViewModelProtocol) -> ViewController {
        let viewDefault = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as! ViewController
        viewDefault.viewModel = viewModel
        return viewDefault
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewList.delegate = self
        tableViewList.dataSource = self
        
        loadData()
        
        title = viewModel.getViewTitle()
    }

    func loadData() {
        viewModel.loadData { success in
            self.tableViewList.reloadData()
        }
    }

}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let nextController = viewModel.getNextController!(index: indexPath.row)
        navigationController?.pushViewController(nextController, animated: true)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.getNumberOfRows()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = viewModel.getTitleForCell(at: indexPath.row)
        return cell
    }
    
    
}
