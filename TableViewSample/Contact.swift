//
//  Contact.swift
//  TableViewSample
//
//  Created by joseph on 2/18/19.
//  Copyright © 2019 joseph. All rights reserved.
//

import Foundation

class Contact {
    
    var name: String?
    var phone: String?
    var email: String?
    var phoneType: Int?
    var isDeleted = false
    
    init() {
        self.name = ""
        self.phone = ""
        self.email = ""
        self.phoneType = 0
    }
    
    init(_ name: String, _ email: String, _ phone: String, _ phoneType: Int ) {
        self.name = name
        self.email = email
        self.phone = phone
        self.phoneType = phoneType
    }
}
