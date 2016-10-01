//
//  User+CoreDataProperties.swift
//  SevenThings
//
//  Created by Laticia Chance on 10/1/16.
//  Copyright © 2016 Laticia Chance. All rights reserved.
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User");
    }

    @NSManaged public var statement: String?
    @NSManaged public var name: String?

}
