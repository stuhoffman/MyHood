//
//  PostCell.swift
//  my-hood-sh
//
//  Created by Stuart Hoffman on 6/26/16.
//  Copyright © 2016 Stuart Hoffman. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {

    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var descLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        postImg.layer.cornerRadius = postImg.frame.size.width/2
        postImg.clipsToBounds = true
    }

    
    func configureCell(post: Post)
    {
        titleLbl.text = post.title
        descLbl.text = post.postDesc
        postImg.image = DataService.instance.imageForPath(post.imagePath)
        
    }
   
}
