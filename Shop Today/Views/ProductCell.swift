//
//  ProductCell.swift
//  Shop Today
//
//  Created by Sudip on 12/3/18.
//  Copyright © 2018 Sudeepasa. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var productImage:UIImageView!
    @IBOutlet weak var productTitle:UILabel!
    @IBOutlet weak var productPrice:UILabel!
    
    func updateProduct(product : Product)
    {
        //from struct passing the product value to the collection cell view
    
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        productPrice.text = product.price
        
    }
    
}
