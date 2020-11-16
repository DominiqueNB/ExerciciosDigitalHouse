//
//  ViewController.swift
//  16.11_shareOptions
//
//  Created by Dominique Nascimento Bezerra on 16/11/20.
//

import UIKit

class ViewController: UIViewController {
//    let items = [messageTextView.text]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func actionButtonShare(_ sender: Any) {
        let string = "Hello, world!"
        let url = URL(string: "https:")!
        let image = UIImage(named: "")
        let pdf = Bundle.main.url(forResource: "xx",
                                    withExtension: "pdf")

        let activityViewController =
            UIActivityViewController(activityItems: [string, url, image, pdf],
                                     applicationActivities: nil)

        present(activityViewController, animated: true) {
        }
    
    }
}

