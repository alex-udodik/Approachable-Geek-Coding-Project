//
//  EditNumberController.swift
//  Approachable Geek Coding Project
//
//  Created by Alex on 12/5/22.
//

import Foundation
import UIKit

class EditNumberController: UIViewController {
    
    var number: String?

    @IBOutlet weak var textFieldNumber: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initializeLabel()
    }
    
    func initializeLabel() {
        self.textFieldNumber.text = number
    }
}
