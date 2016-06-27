//
//  AddPostVC.swift
//  my-hood-sh
//
//  Created by Stuart Hoffman on 6/26/16.
//  Copyright © 2016 Stuart Hoffman. All rights reserved.
//

import UIKit

class AddPostVC: UIViewController {

    @IBOutlet weak var postImg: UIImageView!
    
    @IBOutlet weak var titleLbl: UITextField!

    @IBOutlet weak var descLbl: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        postImg.layer.cornerRadius = postImg.frame.size.width/2
        postImg.clipsToBounds = true
    }
 
    @IBAction func addPicButtonPressed(sender: UIButton) {
        sender.setTitle("", forState: .Normal)
    }
    
    @IBAction func makePostButtonPressed(sender: AnyObject) {
    }
   
    @IBAction func cancelButtonPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}
