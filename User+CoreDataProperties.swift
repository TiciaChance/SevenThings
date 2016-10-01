//
//  User+CoreDataProperties.swift
//  SevenThings
//
//  Created by Laticia Chance on 10/1/16.
//  Copyright © 2016 Laticia Chance. All rights reserved.
//

import Foundation
import CoreData
import 

extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User");
    }

    @NSManaged public var statement: String?
    @NSManaged public var name: String?
    @NSManaged public var statements: NSSet?

}

// MARK: Generated accessors for statements
extension User {

    @objc(addStatementsObject:)
    @NSManaged public func addToStatements(_ value: Statement)

    @objc(removeStatementsObject:)
    @NSManaged public func removeFromStatements(_ value: Statement)

    @objc(addStatements:)
    @NSManaged public func addToStatements(_ values: NSSet)

    @objc(removeStatements:)
    @NSManaged public func removeFromStatements(_ values: NSSet)

}
