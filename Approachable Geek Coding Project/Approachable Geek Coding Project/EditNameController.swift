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
    
    func initializeLabel() {
        self.textFieldFirstName.text = firstName
        self.textFieldLastName.text = lastName
    }
    
}
