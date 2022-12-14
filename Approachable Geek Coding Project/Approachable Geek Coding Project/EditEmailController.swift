//
//  EditEmailController.swift
//  Approachable Geek Coding Project
//
//  Created by Alex on 12/5/22.
//

import Foundation
import UIKit

class EditEmailController: UIViewController {
    
    var email: String?

    @IBOutlet weak var textFieldEmail: UITextField!
    
    @IBAction func buttonUpdatePressed(_ sender: Any) {
        email = self.textFieldEmail.text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initializeLabel()
    }
    
    //sets the email from the main profile page as a reference
    func initializeLabel() {
        self.textFieldEmail.text = email
    }
}
