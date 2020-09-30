//
//  DetailViewController.swift
//  2_-_TableView-Animal
//
//  Created by Dominique Nascimento Bezerra on 30/09/20.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var textLabelName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func settedLable(animal: Animal) {
        textLabelName.text = animal.name
    }
    
    @IBAction func actionButtonClose(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
