//
//  ViewController.swift
//  21.10_FrameAnimation
//
//  Created by Dominique Nascimento Bezerra on 21/10/20.
//

import UIKit

class ViewController: UIViewController {

    var y = 40
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createView(y: y)
        
        
    }
//    @discardableResult
    func createView(y: Int) {
        let newView = UIView(frame: CGRect(x: 0, y: y, width: 50, height: 50))
        view.addSubview(newView)
        newView.backgroundColor = .random()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        newView.addGestureRecognizer(tap)
        newView.isUserInteractionEnabled = true
    }
    
    @objc func handleTap() {
        if canFitANewView(topView: UIView) {
            y += 50
            createView(y: y)
        }
    }
    
    func canFitANewView(topView: UIView) -> Bool {
        let maxBounds = UIScreen.main.bounds
        if  (topView.frame.size.height + topView.frame.origin.y + 50) >= view.frame.size.height {
            print(1)
            return false
        } else {
            print(2)
            return true
        }
    }
}

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}

extension UIColor {
    static func random() -> UIColor {
        return UIColor(
            red: .random(),
            green: .random(),
            blue: .random(),
            alpha: 1.0
        )
    }
}
