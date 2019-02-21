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
        
        contactList = loadData()
 
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.tableView.reloadData()
        
    }
    func loadData() -> [Contact] {
        
        var contacts: [Contact] = []

        let contact1 = Contact("Joe","my@email.com","123456789",0)
        let contact2 = Contact("MariPau","my@email.com","123456789",0)
        let contact3 = Contact("Lore","my@email.com","123456789",0)
        let contact4 = Contact("Matt","my@email.com","123456789",0)
        let contact5 = Contact("Robert","my@email.com","123456789",0)
        let contact6 = Contact("Virginia","my@email.com","123456789",0)
        let contact7 = Contact("Lucho","my@email.com","123456789",0)

        contacts.append(contact1)
        contacts.append(contact2)
        contacts.append(contact3)
        contacts.append(contact4)
        contacts.append(contact5)
        contacts.append(contact6)
        contacts.append(contact7)
        
        
        
        return contacts
    }

    @IBAction func processPageReturns(unwindSegue: UIStoryboardSegue ) {
        
        if unwindSegue.identifier == "ReturnFromAddContact" {
            
            //var newContact = Contact()
            print("unwinding")
        }
        
    }

    @IBAction func clickDeleteContact(_ sender: UIButton) {
        
    }
    

}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactList.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let contact = contactList[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "contacCell") as! ContactCell
        
        tableView.cellLayoutMarginsFollowReadableWidth = true
        

//        let nameLbl = cell.viewWithTag(1001) as! UILabel
//        let emailLbl = cell.viewWithTag(1002) as! UILabel
//        let phoneLbl = cell.viewWithTag(1003) as! UILabel
//        let phoneTypeLbl = cell.viewWithTag(1004) as! UILabel
//
//        nameLbl.text = contact.name
//        emailLbl.text = contact.email
//        phoneLbl.text = contact.phone
//        phoneTypeLbl.text = String(contact.phoneType!)

        cell.setData(contact: contact)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let contact = contactList[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "contacCell") as! ContactCell

        print("Selected row \(contact)")
        
        contactList.remove(at: indexPath.row)
        tableView.reloadData()
        
        
    }
}
