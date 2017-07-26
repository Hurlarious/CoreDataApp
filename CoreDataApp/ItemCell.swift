//
//  ItemCell.swift
//  CoreDataApp
//
//  Created by Dave Hurley on 2017-07-21.
//  Copyright © 2017 Dave Hurley. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {

    @IBOutlet weak var thumb: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var details: UILabel!
    @IBOutlet weak var storeLabel: UILabel!
    @IBOutlet weak var addedLabel: UILabel!
    @IBOutlet weak var updatedLabel: UILabel!
    
    // I created this outlet so I could hide it until i figure out how to add an updated referece to the core data objects
    @IBOutlet weak var updatedText: UILabel!
    
    var updated: NSDate!
    
    
    func configureCell(item: Item) {
        
        title.text = item.title
        price.text = "$\(item.price)"
        details.text = item.details
        thumb.image = item.toImage?.image as? UIImage
        
        storeLabel.text = item.toStore?.name
        
        let date = item.created
        let dateString = date?.toString()
        addedLabel.text = dateString
        
        
        // until i figure out how to add an updated NSDate reference to the core data objects
        updatedLabel.isHidden = true
        updatedText.isHidden = true

    }

}

extension NSDate {
    
    func toString() -> String {
    
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        dateFormatter.locale = Locale(identifier: "en_US")
        return dateFormatter.string(from: self as Date)
    }
}
