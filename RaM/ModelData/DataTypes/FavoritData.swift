//
//  FavoritData.swift
//  RaM
//
//  Created by Fahir Delic on 20.03.23.
//

import Foundation
import CoreData

class FavoritData: ObservableObject {
    
    var container: NSPersistentContainer
    var context: NSManagedObjectContext {
        container.viewContext
    }
    
    init() {
        container = NSPersistentContainer(name: "Favorit")
        container.loadPersistentStores { _, error in
            if let error = error {
                print("CoreData Error: \(error.localizedDescription)")
            }
        }
    }
    
    func saveFav() {
        do {
            try context.save()
        } catch {
            print("Error saving context: \(error.localizedDescription)")
        }
    }
    func addFavorit(character: Favorit) {
        let newFavorit = Favorit(context: context)
        newFavorit.id = character.id
        newFavorit.name = character.name
        
        saveFav()
    }
}
