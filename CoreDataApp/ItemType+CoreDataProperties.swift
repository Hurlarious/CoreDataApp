//
//  ItemType+CoreDataProperties.swift
//  CoreDataApp
//
//  Created by Dave Hurley on 2017-07-21.
//  Copyright © 2017 Dave Hurley. All rights reserved.
//

import Foundation
import CoreData


extension ItemType {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ItemType> {
        return NSFetchRequest<ItemType>(entityName: "ItemType");
    }

    @NSManaged public var type: String?
    @NSManaged public var toItem: Item?

}
