//
//  ViewController.swift
//  10.05_ActionOutletAdvanced
//
//  Created by Dominique Nascimento Bezerra on 05/10/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelOne: UILabel?
    @IBOutlet weak var myButton: UIButton?
    @IBOutlet weak var myTextField: UITextField?
    @IBOutlet weak var labelTwo: UILabel?
    @IBOutlet weak var mySearchBar: UISearchBar?
    @IBOutlet weak var myImageView: UIImageView?
        
    
    
    @IBAction func aviso(sender: UIButton) {
        print("Clicou")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

