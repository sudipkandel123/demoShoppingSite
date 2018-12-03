//
//  Data Service.swift
//  Shop Today
//
//  Created by Sudip on 12/2/18.
//  Copyright © 2018 Sudeepasa. All rights reserved.
//A class to feed data from server if required

import Foundation
class DataService {
    static let instance = DataService() //a singleton which is static ie only one instance of the class can be created
    //now feed the data inside a array from the initializer in struct Category
    private let categories =
    [
    Category(title: "SHIRTS", imageName: "shirts.png") ,
    Category(title: "HOODIES", imageName: "hoodies.png") ,
    Category(title: "HATS", imageName: "hats.png"),
    Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    //now feed the data into the structure struct Product for hats
    private let hats =
    [
    Product(title: "Sudeepasa Exclusive Hat-01 ", price: "Rs.800", imageName: "hat01.png"),
    Product(title: "Sudeepasa Exclusive Hat-02", price: "Rs.829", imageName: "hat02.png"),
    Product(title: "Sudeepasa Exclusive Hat-03", price: "Rs.859", imageName: "hat03.png"),
    Product(title: "Sudeepasa Exclusive Hat-0", price: "Rs.799", imageName: "hat04.png")
    ]
    
    //now feed the data into the structure struct Product for hoodies it can be fed thru server too
    
    private let hoodies =
    [
    Product(title: "Sudeepasa Brand New Hoodies-01", price: "Rs.2599", imageName: "hoodie01.png"),
    Product(title: "Sudeepasa Brand New Hoodies-02", price: "Rs.2899", imageName: "hoodie02.png"),
    Product(title: "Sudeepasa Brand New Hoodies-03", price: "Rs.2999", imageName: "hoodie03.png") ,
    Product(title: "Sudeepasa Brand New Hoodies-04", price: "Rs.3199", imageName: "hoodie04.png")
    ]
    
    //now feed the data into the structure struct Product for shirts
    private let shirts =
    [
    Product(title: "Sudeepasa Reunity Shirt-01", price: "Rs.1499", imageName: "shirt01.png"),
    Product(title: "Sudeepasa Reunity Shirt-02", price: "Rs.1399", imageName: "shirt02.png"),
    Product(title: "Sudeepasa Reunity Shirt-03", price: "Rs.1799", imageName: "shirt03.png"),
    Product(title: "Sudeepasa Reunity Shirt-04", price: "Rs.1699", imageName: "shirt04.png"),
    Product(title: "Sudeepasa Reunity Shirt-05", price: "Rs.1499", imageName: "shirt05.png")
    ]
    
    
    //since i have no digital goods so let it be empty array
    private let digitalGoods = [Product]() //if we dont have this then app will crash as the digital collection view will return nil
    
    //function which returns the array as it is private and whenever we want to access we will access the getCategories
    func getCategories() -> [Category]{
        return categories
        
    }
    func getProducts(forCategoryTitle title : String) -> [Product]
    {
        switch title
        {
        case "SHIRTS":
            return getShirt()
        case "HOODIES":
            return getHoodies()
        case "HATS":
            return getHats()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirt()
        }
    }
     
    func getShirt()->[Product]
    {
        
        return shirts
    }
    
    func getHoodies()->[Product]
    {
        
        return hoodies
    }
    func getHats()->[Product]
    {
        return hats
        
    }
    func getDigitalGoods()->[Product]
    {
        return digitalGoods
        
    }
    
    
}
