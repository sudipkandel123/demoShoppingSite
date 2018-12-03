//
//  ProductsVC.swift
//  Shop Today
//
//  Created by Sudip on 12/3/18.
//  Copyright © 2018 Sudeepasa. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController , UICollectionViewDataSource, UICollectionViewDelegate {
    private(set) public var products = [Product]()
    //to base the collection viewe suppose we are loading data from the internet and the data is not yet loaded then the app will crash for that case we define a empty array
    @IBOutlet weak var productsCollection:UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productsCollection.dataSource = self
        productsCollection.delegate = self
    }
    
    
    func initProducts(category : Category){
        
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title //to change the title
        
//to edit back bar button we will go to category vc in prepareforsegue
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
    return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
        
    {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell
        
        {
            let product = products[indexPath.row]
            cell.updateProduct(product: product)
            return cell
            
        }
        return ProductCell()
        
    }

    
}
