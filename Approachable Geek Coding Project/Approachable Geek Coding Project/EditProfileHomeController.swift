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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CircularImageView.layer.cornerRadius = CircularImageView.frame.size.width / 2
        
        circularImageViewPen.layer.cornerRadius = circularImageViewPen.frame.size.width / 2
        
        circularImageViewProfilePic.layer.cornerRadius = circularImageViewProfilePic.frame.size.width / 2
    }

}
