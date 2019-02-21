//
//  addContactVC.swift
//  TableViewSample
//
//  Created by joseph on 2/18/19.
//  Copyright © 2019 joseph. All rights reserved.
//

import UIKit

class AddContactVC: UIViewController {

    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPhone: UITextField!
    @IBOutlet weak var scPhoneType: UISegmentedControl!
    
    
    
    
    var myContact = Contact()
    var myContactCell = ContactCell()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("at AddContactVC")
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ReturnFromAddContact" {
            
            let dest = segue.destination as! ViewController
            self.myContact.name = self.txtName.text
            self.myContact.email = self.txtEmail.text
            self.myContact.phone = self.txtPhone.text
            self.myContact.phoneType = self.scPhoneType.selectedSegmentIndex
            
            // myContactCell.setData(contact: myContact)
            dest.contactList.append(myContact)
        }
    }
}
