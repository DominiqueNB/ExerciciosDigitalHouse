//
//  ViewModel.swift
//  SampleDBCoreData
//
//  Created by Dominique Nascimento Bezerra on 09/12/20.
//

import Foundation

class ViewModel {
    
    var arrayTasks = [Task]()
    var dataBaseManager = DataBaseManager()

    
    func saveNewTask(task: String, taskState: Bool) {
        dataBaseManager.save(taskName: task, taskState: taskState)
        loadArrayTasks()
    }
    
    func editTask(task: Task, taskName: String, taskState: Bool) {
        let id = task.objectID
        dataBaseManager.edit(id: id, taskName: taskName, taskState: taskState)
        loadArrayTasks()
    }
    
    func deleteTask(task: Task) {
        let id = task.objectID
        dataBaseManager.delete(id: id)
        loadArrayTasks()
    }
    
    func loadArrayTasks () {
        dataBaseManager.loadData { (arrayTasks) in
            if let arrayTasks = arrayTasks {
                self.arrayTasks = arrayTasks
            }
        }
    }
    
    
    
}
