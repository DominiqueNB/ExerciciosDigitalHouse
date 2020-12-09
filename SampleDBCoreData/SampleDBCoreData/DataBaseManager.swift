//
//  DataBaseManagerViewController.swift
//  SampleDBCoreData
//
//  Created by Dominique Nascimento Bezerra on 09/12/20.
//

import CoreData
import UIKit

class DataBaseManager {
    
    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "SampleDBCoreData")
        container.loadPersistentStores(completionHandler: { _, error in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    func loadData(completion: ([Task]?) -> Void) {
            let context = persistentContainer.viewContext
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Task")
            let result = try? context.fetch(request)
            let arrayTasks = result as? [Task]
            completion(arrayTasks)
    }
    
    // Salvar novo objeto
    func save(taskName: String, taskState: Bool) {
        let context = persistentContainer.viewContext
        let task = Task(context: context)
        task.name = taskName
        task.isConcluded = taskState
        
        try? context.save()
        
    }
    
    func edit(id: NSManagedObjectID, taskName: String, taskState: Bool) {
            let context = persistentContainer.viewContext
            let task = context.object(with: id) as? Task
            task?.name = taskName
            task?.isConcluded = taskState

            try? context.save()
        }
        
        func delete(id: NSManagedObjectID) {
            let context = persistentContainer.viewContext
            let task = context.object(with: id)
            context.delete(task)
            
            try? context.save()
        }

            
    
//// Carregar a lista de person que já está salva
//    func loadData(completion: ([Task]?) -> Void) {
//        let context = persistentContainer.viewContext
//        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Person")
//        let result = try? context.fetch(request)
//        let arrayPerson = result as? [Person]
//        completion(arrayPerson)
//    }

}
