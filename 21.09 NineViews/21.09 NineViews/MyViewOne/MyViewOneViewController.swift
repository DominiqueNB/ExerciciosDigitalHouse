//
//  MyViewOneViewController.swift
//  21.09 NineViews
//
//  Created by Alexandre Oliveira on 21/09/20.
//  Copyright © 2020 Dominique N Bezerra. All rights reserved.
//

import UIKit

class MyViewOneViewController: UIViewController {

    @IBAction func actionButonMyViewOneModal(_ sender: Any) {
        if let viewOneModal = UIStoryboard(name: "MyViewOneModal", bundle: nil).instantiateInitialViewController() as? MyViewOneModalViewController {
            present(viewOneModal, animated: true, completion: nil)
        }
    }
    @IBAction func actionButonMyViewOneNavigation(_ sender: Any) {
        if let viewOneNavigation = UIStoryboard(name: "MyViewOneNavigation", bundle: nil).instantiateInitialViewController() as? MyViewOneNavigationViewController {
            navigationController?.pushViewController(viewOneNavigation, animated: true)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "MyViewOne"
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
