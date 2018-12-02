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
    //now feed the data inside a array from the initializer in class Category
    private let categories = [Category(title: "SHIRTS", imageName: "shirts.png") , Category(title: "HOODIES", imageName: "hoodies.png") , Category(title: "HATS", imageName: "hats.png"), Category(title: "DIGITAL", imageName: "digital.png")]
    
    //function which returns the array as it is private and whenever we want to access we will access the getCategories
    func getCategories() -> [Category]{
        return categories
        
    }
}
