//
//  ViewController.swift
//  TableViewSample
//
//  Created by joseph on 2/18/19.
//  Copyright © 2019 joseph. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var contactList: [Contact] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // add to array
        contactList = loadData()
 
    }
    
    func loadData() -> [Contact] {
        
        var contacts: [Contact] = []

        let contact1 = Contact("Joe","123456789")
        let contact2 = Contact("Lore","123456789")
        let contact3 = Contact("Mari","123456789")
        let contact4 = Contact("Matt","123456789")
        let contact5 = Contact("Babi","123456789")
        let contact6 = Contact("Rob","123456789")
        let contact7 = Contact("Lucho","123456789")
        
        contacts.append(contact1)
        contacts.append(contact2)
        contacts.append(contact3)
        contacts.append(contact4)
        contacts.append(contact5)
        contacts.append(contact6)
        contacts.append(contact7)
        
        return contacts
    }


}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactList.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let contact = contactList[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "contacCell") as! ContactCell
        
        cell.setData(contact: contact)
        
        return cell
    }
    
    
    
}
