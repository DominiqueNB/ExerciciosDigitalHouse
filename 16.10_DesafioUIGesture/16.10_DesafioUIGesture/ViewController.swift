//
//  ViewController.swift
//  16.10_DesafioUIGesture
//
//  Created by Dominique Nascimento Bezerra on 16/10/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelSum: UILabel!
    
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var blueView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelSum.text = String(0)
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap))
        greenView.addGestureRecognizer(tap)
        
        let swipe = UITapGestureRecognizer(target: self, action: #selector(self.handleSwipe))
        redView.addGestureRecognizer(swipe)
        
        
        let long = UITapGestureRecognizer(target: self, action: #selector(self.handleLong))
        blueView.addGestureRecognizer(long)
    }

    @objc func handleTap() {
        let intLabel = Int(labelSum.text!)! + 1
        labelSum.text = String(intLabel)
        print("tap")
    }

    @objc func handleSwipe() {
        let intLabel = Int(labelSum.text!)! - 1
        labelSum.text = String(intLabel)
    }
    
    @objc func handleLong() {
        let intLabel = Int(labelSum.text!)! + 1
        labelSum.text = String(intLabel)
    }
}

