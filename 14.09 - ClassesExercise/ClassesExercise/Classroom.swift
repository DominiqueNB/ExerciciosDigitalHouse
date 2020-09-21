//
//  Classroom.swift
//  ClassesExercise
//
//  Created by Alexandre Oliveira on 16/09/20.
//  Copyright © 2020 Dominique N Bezerra. All rights reserved.
//

import Foundation

class Classroom {
    var name: String
    var studentsList = [Student]()
    
    init(name: String, studentsList: [Student]) {
        self.name = name
        self.studentsList = studentsList
    }
}
