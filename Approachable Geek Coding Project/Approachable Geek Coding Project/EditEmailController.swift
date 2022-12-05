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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initializeLabel()
    }
    
    func initializeLabel() {
        self.textFieldEmail.text = email
    }
}
