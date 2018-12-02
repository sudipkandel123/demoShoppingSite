//
//  CategoryCellTableViewCell.swift
//  Shop Today
//
//  Created by Sudip on 12/2/18.
//  Copyright © 2018 Sudeepasa. All rights reserved.
//

import UIKit

class CategoryCellTV: UITableViewCell {

    @IBOutlet weak var CategoryImage:UIImageView!
    @IBOutlet weak var CategoryTitle:UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}
