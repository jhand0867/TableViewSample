//
//  DetailsContactVC.swift
//  TableViewSample
//
//  Created by joseph on 2/19/19.
//  Copyright © 2019 joseph. All rights reserved.
//

import UIKit

class DetailsContactVC: UIViewController {


    var myContact = Contact()
    
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var lblEmail: UILabel!
    
    @IBOutlet weak var lblPhone: UILabel!
    
    @IBOutlet weak var lblPhoneType: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.lblName.text = "Lore"
        self.lblEmail.text = "lore@gmail.com"
        self.lblPhone.text = "919"
        self.lblPhoneType.text = "Cell"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
