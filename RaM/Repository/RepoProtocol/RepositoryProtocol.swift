//
//  RepositoryProtocol.swift
//  RaM
//
//  Created by Fahir Delic on 20.03.23.
//

//import Foundation
//import CoreData
//import SwiftUI
//
//protocol Repository {
//    
//    //    The entity managed by the repositlory
//    associatedtype "Favorit"
//    
//    //    Gets an array of entities.
//    //     - Parameters:
//    //     - predicate: the predicate to be used for fetching the entities
//    //     - sortDescriptors: The sort descriptors used for sorting the returned array of entities.
//    func get(predicate: NSPredicate?, sortDescriptors: [NSSortDescriptor]?) -> Result<[Entity], Error>
//    
//    //    creates an entity.
//    func create() -> Result<Any, Error>
//    
//    //    Deletes an entity
//    //     - Favorit entity: The entity to be deleted
//    func delete(entity: Entity) -> Result<Any, Error>
//    
//}
