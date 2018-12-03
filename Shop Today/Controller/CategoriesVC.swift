//
//  ViewController.swift
//  Shop Today
//
//  Created by Sudip on 12/2/18.
//  Copyright © 2018 Sudeepasa. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController , UITableViewDataSource , UITableViewDelegate{
    @IBOutlet weak var CategoryTable:UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        CategoryTable.dataSource = self
        CategoryTable.delegate = self
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
        //count total number of arrays in the returned array of getCategories where we have initialized a singleton
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCellTV{
            let category = DataService.instance.getCategories() [indexPath.row]
            //from Dataservice class take that one instance(singleton) and getCategories() ie array and select the indexpath . row elemetn
            cell.updateViews(category: category)
            return cell 
        }
        else{
            //return a empty cell
            return CategoryCellTV()
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "goToProducts", sender: self)
    }


}

