//
//  ContactCell.swift
//  TableViewSample
//
//  Created by joseph on 2/18/19.
//  Copyright © 2019 joseph. All rights reserved.
//

import UIKit

class ContactCell: UITableViewCell {


    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblPhone: UILabel!
    
    func setData(contact: Contact ) {
        
        lblName.text = contact.name
        lblPhone.text = contact.phone
    }
    
}
