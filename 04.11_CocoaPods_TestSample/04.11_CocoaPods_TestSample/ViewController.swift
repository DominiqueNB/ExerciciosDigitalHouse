//
//  ViewController.swift
//  04.11_CocoaPods_TestSample
//
//  Created by Dominique Nascimento Bezerra on 04/11/20.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {

    @IBOutlet var imageView: UIImageView?
    
    @IBAction func showImage() {
        imageView?.isHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://raw.githubusercontent.com/onevcat/Kingfisher/master/images/logo.png")
        imageView!.kf.setImage(with: url)
        imageView?.isHidden = true
    }


}

