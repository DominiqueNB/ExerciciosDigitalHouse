//
//  ViewModelProtocol.swift
//  20.11_MVCAdvanced
//
//  Created by Dominique Nascimento Bezerra on 20/11/20.
//

import Foundation
import UIKit

@objc protocol ViewModelProtocol {
    
    func loadData(onComplete: @escaping (Bool) -> Void)
    
    func getNumberOfRows() -> Int
    
    @objc optional func getNextController(index: Int) -> UIViewController
    
    func getTitleForCell(at index: Int) -> String
    
    func getViewTitle() -> String
}
