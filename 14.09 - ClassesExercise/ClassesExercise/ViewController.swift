//
//  ViewController.swift
//  ClassesExercise
//
//  Created by Alexandre Oliveira on 16/09/20.
//  Copyright © 2020 Dominique N Bezerra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldMain: UITextField!

    let domi = Student(name: "Dominique", surname: "N Bezerra", age: 26, turma: "Mobile iOS")
    let xandre = Person(name: "Alexandre", surname: "C Oliveira", age: 28)
    let sarah = Elderly(name: "Sarah", surname: "DM Caldas", age: 85, turma: "Parque do Idoso", medicineCounter: 0)
    let turma = Classroom(name: "Mobile iOS", studentsList: [])
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
                    
        textFieldMain.delegate = self
    }


}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("ShouldReturn")
        return true
    }
//
    public func textFieldDidChangeSelection(_ textField: UITextField) {
        print("DidChangeSelection")
    }

    public func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print("ShouldClear")
        return true
    }

    public func textFieldDidBeginEditing(_ textField: UITextField) {
        print("DidBeginEditing")
    }
//
    public func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("ShouldEndEditing")
        return true
    }

    public func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("ShouldBeginEditing")
        return true
    }

    public func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        print("DidEndEditing")
    }

    public func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print("TextField")
        return true
    }
}
