//
//  AddPostVC.swift
//  my-hood-sh
//
//  Created by Stuart Hoffman on 6/26/16.
//  Copyright © 2016 Stuart Hoffman. All rights reserved.
//

import UIKit

class AddPostVC: UIViewController , UIImagePickerControllerDelegate, UINavigationControllerDelegate{

    @IBOutlet weak var postImg: UIImageView!
    
    @IBOutlet weak var titleLbl: UITextField!

    @IBOutlet weak var descLbl: UITextField!
    
    var imagePicker: UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        postImg.layer.cornerRadius = postImg.frame.size.width/2
        postImg.clipsToBounds = true
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
    }
 
    @IBAction func addPicButtonPressed(sender: UIButton) {
        sender.setTitle("", forState: .Normal)
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func makePostButtonPressed(sender: AnyObject) {
        if let title = titleLbl.text , let desc = descLbl.text, let img = postImg.image{
            let post = Post(imagePath: "", title: title, description: desc)
            DataService.instance.addPost(post)
            dismissViewControllerAnimated(true, completion: nil)
        }
    }
   
    @IBAction func cancelButtonPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        postImg.image = image
    }
}
