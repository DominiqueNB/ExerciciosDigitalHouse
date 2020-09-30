//
//  DetailPersonViewController.swift
//  1_-_TableView-NomeCargoEmail
//
//  Created by Dominique Nascimento Bezerra on 30/09/20.
//

import UIKit

class DetailPersonViewController: UIViewController {

    @IBOutlet weak var textLabelName: UILabel!
    
    func setPerson(person: Person) {
        textLabelName.text = person.name
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
