//
//  EditAboutController.swift
//  Approachable Geek Coding Project
//
//  Created by Alex on 12/5/22.
//

import Foundation
import UIKit

class EditAboutController: UIViewController {
    
    var about: String?

    @IBOutlet weak var textViewAbout: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initializeLabel()
    }
    
    func initializeLabel() {
        self.textViewAbout.text = about
    }
}
