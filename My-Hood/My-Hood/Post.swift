//
//  Post.swift
//  My-Hood
//
//  Created by Stuart Hoffman on 6/20/16.
//  Copyright © 2016 Stuart Hoffman. All rights reserved.
//

import Foundation

class Post {
    private var imagePath: String
    private var title: String
    private var postDesc: String
    
    init(imagePath: String, title: String, description: String) {
        self.imagePath = imagePath
        self.title = title
        self .postDesc = description
    }
}