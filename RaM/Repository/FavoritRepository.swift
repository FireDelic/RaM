//
//  FavoritRepository.swift
//  RaM
//
//  Created by Fahir Delic on 21.03.23.
//

//import Foundation
//import CoreData
//import SwiftUI
//
//// Enum for CoreData related errors
//enum CoreDataError: Error {
//    case invalidManagedObjectType
//    
//}
//
//
////Generic class for handling NSManagedLObject subclasses
//class FavoritDataRepository: Repository {
//    typealias Entity = T
//    
//    //    The NSManagedObjectContext instance to be used for performing the operations.
//    private let managedObjectContext : NSManagedObjectContext
//    
//    //    Designated initializer
//    //     - Parameter managedObjectContext: The NSManagedObjectContext instance to be used for performing the operations
//    init(managedObjectContext: NSManagedObjectContext) {
//        self.managedObjectContext = managedObjectContext
//    }
//    
//    //    Gets an array of NSMaNAGEDOBJECT ENTITTIES
//    //     - Parameters:
//    //     - predicate: the predicate to bde used for fetching the entities
//    //     - sortDescriptors: The sort Descriptors used for  sorting the returned array of entitites
//    //     - Returns: A result consisting of either an array of NSManagedObject entities or an Error.
//    func get(predicate: NSPredicate?, sortDescriptors: [NSSortDescriptor]?) -> Result<[Entity], Error> {
//        //        Create a fetch Request for the associated NSManagedObjectContext type
//        let fetchRequest = Entity.fetchRequest()
//        fetchRequest.predicate = predicate
//        fetchRequest.sortDescriptors = sortDescriptors
//        do {
//            // Perform the fetch request
//            if let fetchResults = try managedObjectContext.fetch(fetchRequest) as? [Entity] {
//                return .success(fetchResults)
//            } else {
//                return .failure(CoreDataError.invalidManagedObjectType)
//            }
//        } catch {
//            return .failure(error)
//        }
//    }
//    
//    //  Creates a NSManagedObject entity
//    // - Returns: A result consisting of either a NSManagedObject entity or an Error.
//    func create() -> Result<[Entity], Error> {
//        let className = String(describing: Entity.self)
//        guard let managedObject = NSEntityDescription.insertNewObject(forEntityName: className, into: managedObjectContext) as? Entity else {
//            return .failure(CoreDataError.invalidManagedObjectType)
//        }
//        return .success(managedObject)
//    }
//    
//    // Deletes a NSManagedObject entity
//    // - Parameter entity: The NSManagedObject to be deleted.
//    // - Returns: A result consisting of either a Bool set to true or an Error.
//    func delete(entity: Entity) -> Result<[Entity], Error> {
//        managedObjectContext.delete(entity)
//        return .success(true)
//    }
//}
