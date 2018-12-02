//
//  Category.swift
//  Shop Today
//
//  Created by Sudip on 12/2/18.
//  Copyright © 2018 Sudeepasa. All rights reserved.
//

import Foundation
struct  Category {
    private(set) public var title : String //lets you make it private but accessible but cant be edited
    private(set) public var imageName : String
    init(title:String , imageName : String){
        self.title = title
        self.imageName = imageName
    }
}
