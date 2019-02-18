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
    
    init() {
        self.name = ""
        self.phone = ""
    }
    
    init(_ name: String, _ phone: String) {
        self.name = name
        self.phone = phone 
    }
}
