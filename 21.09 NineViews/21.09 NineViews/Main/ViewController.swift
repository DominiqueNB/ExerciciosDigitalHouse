//
//  ViewController.swift
//  21.09 NineViews
//
//  Created by Alexandre Oliveira on 21/09/20.
//  Copyright © 2020 Dominique N Bezerra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func actionButtonOne(_ sender: Any) {
        if let viewOne = UIStoryboard(name: "MyViewOne", bundle: nil).instantiateInitialViewController() as? MyViewOneViewController {
            navigationController?.pushViewController(viewOne, animated: true)
        }
    }
    @IBAction func actionButtonOneModal(_ sender: Any) {
        if let viewOneModal = UIStoryboard(name: "MyViewOneModal", bundle: nil).instantiateInitialViewController() as? MyViewOneModalViewController {
            present(viewOneModal, animated: true, completion: nil)
        }
    }
    @IBAction func actionButtonOneNavigation(_ sender: Any) {
        if let viewOneNavigation = UIStoryboard(name: "MyViewOneNavigation", bundle: nil).instantiateInitialViewController() as? MyViewOneNavigationViewController {
            navigationController?.pushViewController(viewOneNavigation, animated: true)
        }
    }
    
    @IBAction func actionButtonTwo(_ sender: Any) {
        if let viewTwo = UIStoryboard(name: "MyViewTwo", bundle: nil).instantiateInitialViewController() as? MyViewTwoViewController {
            navigationController?.pushViewController(viewTwo, animated: true)
        }
    }
    @IBAction func actionButtonTwoModal(_ sender: Any) {
        if let viewTwoModal = UIStoryboard(name: "MyViewTwoModal", bundle: nil).instantiateInitialViewController() as? MyViewTwoModalViewController {
            present(viewTwoModal, animated: true, completion: nil)
        }
    }
    @IBAction func actionButtonTwoNavigation(_ sender: Any) {
        if let viewTwoNavigation = UIStoryboard(name: "MyViewTwoNavigation", bundle: nil).instantiateInitialViewController() as? MyViewTwoNavigationViewController {
            navigationController?.pushViewController(viewTwoNavigation, animated: true)
        }
    }
    
    @IBAction func actionButtonThree(_ sender: Any) {
        if let viewThree = UIStoryboard(name: "MyViewThree", bundle: nil).instantiateInitialViewController() as? MyViewThreeViewController {
            navigationController?.pushViewController(viewThree, animated: true)
        }
    }
    @IBAction func actionButtonThreeModal(_ sender: Any) {
        if let viewThreeModal = UIStoryboard(name: "MyViewThreeModal", bundle: nil).instantiateInitialViewController() as? MyViewThreeModalViewController {
            present(viewThreeModal, animated: true, completion: nil)
        }
    }
    @IBAction func actionButtonThreeNavigation(_ sender: Any) {
        if let viewThreeNavigation = UIStoryboard(name: "MyViewThreeNavigation", bundle: nil).instantiateInitialViewController() as? MyViewThreeNavigationViewController {
            navigationController?.pushViewController(viewThreeNavigation, animated: true)
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

