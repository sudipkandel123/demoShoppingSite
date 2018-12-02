//
//  CategoryCellTableViewCell.swift
//  Shop Today
//
//  Created by Sudip on 12/2/18.
//  Copyright © 2018 Sudeepasa. All rights reserved.
// for the table view cell

import UIKit

class CategoryCellTV: UITableViewCell {

    @IBOutlet weak var CategoryImage:UIImageView!
    @IBOutlet weak var CategoryTitle:UILabel!
    
    func updateViews(category : Category){
        CategoryImage.image = UIImage(named: category.imageName)
        CategoryTitle.text = category.title
    }
  
}
