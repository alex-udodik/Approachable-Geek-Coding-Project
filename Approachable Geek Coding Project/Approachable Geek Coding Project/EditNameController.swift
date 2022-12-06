//
//  EditNameController.swift
//  Approachable Geek Coding Project
//
//  Created by Alex on 12/5/22.
//

import Foundation
import UIKit

class EditNameController: UIViewController {
    
    var firstName: String?
    var lastName: String?
    
    @IBOutlet weak var textFieldLastName: UITextField!
    @IBOutlet weak var textFieldFirstName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initializeLabel()
    }
    
    //sets first and last name from the main profile page as a reference
    func initializeLabel() {
        self.textFieldFirstName.text = firstName
        self.textFieldLastName.text = lastName
    }
    
    
    @IBAction func buttonUpdatePressed(_ sender: Any) {
        
        firstName = self.textFieldFirstName.text
        lastName = self.textFieldLastName.text
    }
}
