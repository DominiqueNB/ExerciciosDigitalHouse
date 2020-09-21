//
//  MyViewThreeViewController.swift
//  21.09 NineViews
//
//  Created by Alexandre Oliveira on 21/09/20.
//  Copyright © 2020 Dominique N Bezerra. All rights reserved.
//

import UIKit

class MyViewThreeViewController: UIViewController {

    @IBAction func actionButtonMyViewThreeModal(_ sender: Any) {
        if let viewThreeModal = UIStoryboard(name: "MyViewThreeModal", bundle: nil).instantiateInitialViewController() as? MyViewThreeModalViewController {
            present(viewThreeModal, animated: true, completion: nil)
        }
    }
    @IBAction func actionButtonMyViewThreeNavigation(_ sender: Any) {
        if let viewThreeNavigation = UIStoryboard(name: "MyViewThreeNavigation", bundle: nil).instantiateInitialViewController() as? MyViewThreeNavigationViewController {
            navigationController?.pushViewController(viewThreeNavigation, animated: true)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "MyViewThree"
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
