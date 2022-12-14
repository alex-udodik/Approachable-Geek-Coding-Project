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
    
    @IBAction func buttonUpdatePressed(_ sender: Any) {
        about = self.textViewAbout.text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeLabel()
    }
    
    //Sets the about me text from the main profile page as reference
    func initializeLabel() {
        self.textViewAbout.text = about
    }
}
