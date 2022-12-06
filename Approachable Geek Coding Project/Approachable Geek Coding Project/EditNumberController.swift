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
    
    @IBAction func buttonUpdatePressed(_ sender: Any) {
        number = self.textFieldNumber.text
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initializeLabel()
    }
    
    //sets the number from the main profile page as a reference
    func initializeLabel() {
        self.textFieldNumber.text = number
    }
}
