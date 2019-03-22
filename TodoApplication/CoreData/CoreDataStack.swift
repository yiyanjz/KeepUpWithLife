//
//  CoreDataStack.swift
//  TodoApplication
//
//  Created by Justin Zhang on 3/15/19.
//  Copyright © 2019 Justin Zhang. All rights reserved.
//

import Foundation
import CoreData

class CoreDataStack {
    var container: NSPersistentContainer {
        let container = NSPersistentContainer(name: "Todos")
        container.loadPersistentStores { (description, error) in
            guard error == nil else {
                print("Error: \(error!)")
                return
            }
        }
        
        return container
    }

    var managedContext: NSManagedObjectContext {
        return container.viewContext
    }
}
