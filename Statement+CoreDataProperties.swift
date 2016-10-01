//
//  Statement+CoreDataProperties.swift
//  SevenThings
//
//  Created by Laticia Chance on 10/1/16.
//  Copyright © 2016 Laticia Chance. All rights reserved.
//

import Foundation
import CoreData


extension Statement {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Statement> {
        return NSFetchRequest<Statement>(entityName: "Statement");
    }

    @NSManaged public var content: String?
    @NSManaged public var date: NSDate?

}
