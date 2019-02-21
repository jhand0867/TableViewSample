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
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var lblPhone: UILabel!
    @IBOutlet weak var lblPhoneType: UILabel!
    @IBOutlet weak var imgPhoneType: UIImageView!
    
    func setData(contact: Contact ) {
        
        lblName.text = contact.name!
        lblEmail.text = contact.email!
        lblPhone.text = contact.phone!
        
        switch contact.phoneType! {
        case 0:
            lblPhoneType.text = "Home"
            imgPhoneType.image = UIImage(contentsOfFile: "image-0")
        case 1:
            lblPhoneType.text = "Cell"
            imgPhoneType.image = UIImage(contentsOfFile: "image-1")
        default:
            lblPhoneType.text = "Office"
            imgPhoneType.image = UIImage(contentsOfFile: "image-2")
        }
    }
    
}
