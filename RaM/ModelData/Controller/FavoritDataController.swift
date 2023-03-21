//
//  FavoritDataController.swift
//  RaM
//
//  Created by Fahir Delic on 20.03.23.
//

import CoreData
import Foundation
import SwiftUI

class FavoritDataController {
    
    @State var container: NSPersistentContainer
    
    init() {
        container = NSPersistentContainer(name: "Favorit")
        container.loadPersistentStores { (description, error) in
            if let error = error {
                fatalError("Core Data Store failed \(error.localizedDescription)")
            }
        }
    }
    
    func addToFavorites(_ character: CharacterData) {
        let context = container.viewContext
        let favorit = Favorit(context: context)
        favorit.id = Int16(character.id ?? 1)
        favorit.name = character.name
        favorit.status = character.status
        favorit.species = character.species
        favorit.type = character.type
        favorit.gender = character.gender
        favorit.image = character.image
        favorit.episodes = character.episode?[Int()]
        favorit.url = character.url
        favorit.created = character.created
        favorit.isFavorite = true
        
        do {
            try context.save()
        } catch {
            print("Failed to add favorite character: \(error.localizedDescription)")
        }
    }

    
    func getAllFavorits() -> [Favorit] {
        
        let fetchRequest: NSFetchRequest<Favorit> = Favorit.fetchRequest()
        
        do {
            return try container.viewContext.fetch(fetchRequest)
        } catch {
            return []
        }
    }
    
    func saveFavorit(id: UUID) {
         
        let favorit = Favorit(context: container.viewContext)
        favorit.id = Int16()
        
        do {
            try container.viewContext.save()
        } catch {
            print("Failed to save favorit \(error)")
        }
    }
}
