//
//  EditPicController.swift
//  Approachable Geek Coding Project
//
//  Created by Alex on 12/5/22.
//

import Foundation
import UIKit

class EditPicController: UIViewController,UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var pic: UIImage?
    var newPic: UIImage?
    
    @IBOutlet weak var profilePicUIImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initializePic()
    }
    
    
    //saves the newly chosen pic
    @IBAction func buttonUpdatePressed(_ sender: Any) {
        if newPic != nil {
            pic = newPic
        }
    }
    
    //opens the image viewer selection window
    @IBAction func imageViewPressed(_ sender: Any) {
        var imagePicker = UIImagePickerController()

        if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum){
            imagePicker.delegate = self
            imagePicker.sourceType = .savedPhotosAlbum
            imagePicker.allowsEditing = true
            present(imagePicker, animated: true, completion: nil)
        }
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
   
    //sets the newly chosen image into the image view
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerOriginalImage")] as? UIImage {
            self.profilePicUIImageView.image = image
            newPic = image
        }
        
        if let image = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerEditedImage")] as? UIImage {
            self.profilePicUIImageView.image = image
            newPic = image
        }
        
        picker.dismiss(animated: true, completion: nil)
    }
    
    //sets the image from the main porofile page as a reference
    func initializePic() {
        self.profilePicUIImageView.image = pic
    }
}
