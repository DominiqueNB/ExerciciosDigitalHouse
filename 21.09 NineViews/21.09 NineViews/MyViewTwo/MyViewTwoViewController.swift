//
//  MyViewTwoViewController.swift
//  21.09 NineViews
//
//  Created by Alexandre Oliveira on 21/09/20.
//  Copyright © 2020 Dominique N Bezerra. All rights reserved.
//

import UIKit

class MyViewTwoViewController: UIViewController {

    @IBAction func actionButtonMyViewTwoModal(_ sender: Any) {
        if let viewTwoModal = UIStoryboard(name: "MyViewTwoModal", bundle: nil).instantiateInitialViewController() as? MyViewTwoModalViewController {
            present(viewTwoModal, animated: true, completion: nil)
        }
    }
    @IBAction func actionButtonMyViewTwoNavigation(_ sender: Any) {
        if let viewTwoNavigation = UIStoryboard(name: "MyViewTwoNavigation", bundle: nil).instantiateInitialViewController() as? MyViewTwoNavigationViewController {
            navigationController?.pushViewController(viewTwoNavigation, animated: true)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "MyViewTwo"
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
