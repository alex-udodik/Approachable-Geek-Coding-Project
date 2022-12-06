//
//  EditProfileHomeController.swift
//  Approachable Geek Coding Project
//
//  Created by Alex on 12/5/22.
//
import UIKit
import Foundation


class EditProfileHomeController: UIViewController {

    @IBOutlet weak var CircularImageView: UIImageView!
    @IBOutlet weak var circularImageViewPen: UIImageView!
    @IBOutlet weak var circularImageViewProfilePic: UIImageView!
    
    @IBOutlet weak var EditAboutMeLabel: UILabel!
    @IBOutlet weak var EditEmailLabel: UILabel!
    @IBOutlet weak var EditNumberLabel: UILabel!
    @IBOutlet weak var EditNameLabel: UILabel!
    
    var imagePicker = UIImagePickerController()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CircularImageView.layer.cornerRadius = CircularImageView.frame.size.width / 2
        
        circularImageViewPen.layer.cornerRadius = circularImageViewPen.frame.size.width / 2
        
        circularImageViewProfilePic.layer.cornerRadius = circularImageViewProfilePic.frame.size.width / 2
        
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "segueEditName") { // Check for correct segue
            let controller = segue.destination as! EditNameController
            if let fullName = EditNameLabel.text {
                
                let arr = fullName.split(separator: " ")
                controller.firstName = String(arr[0])
                controller.lastName = String(arr[1])
                
            }
        }
        else if (segue.identifier == "segueEditNumber") {
            let controller = segue.destination as! EditNumberController
            var number: String? = EditNumberLabel.text
            print(number)
            controller.number = number
        }
        else if (segue.identifier == "segueEditEmail") {
            let controller = segue.destination as! EditEmailController
            var email: String? = EditEmailLabel.text
            controller.email = email
        }
        else if (segue.identifier == "segueEditAbout") {
            let controller = segue.destination as! EditAboutController
            var about: String? = EditAboutMeLabel.text
            controller.about = about;
        }
       
    }
    
    
    @IBAction func unwindToViewControllerNameHere(segue: UIStoryboardSegue) {
        
        
        if let sourceViewController = segue.source as? EditNameController {
            var fullName = "";
            if let first = sourceViewController.firstName {
                fullName.append(first + " ")
            }
            if let last = sourceViewController.lastName {
                fullName.append(last)
            }
            
            self.EditNameLabel.text = String(fullName)
        }
        
    }

}
