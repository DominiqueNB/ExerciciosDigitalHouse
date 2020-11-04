//
//  PessoaViewController.swift
//  10.07_SegmentedControl_Enum
//
//  Created by Dominique Nascimento Bezerra on 07/10/20.
//

import UIKit

class PessoaViewController: UIViewController {

    @IBOutlet var labelName: UILabel!
    
    @IBAction func actionClose(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func setUpLabel(person: Pessoa) {
        labelName.text = person.name
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
