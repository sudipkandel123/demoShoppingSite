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
        let category = DataService.instance.getCategories()[indexPath.row]
        //when the indexpath.row is selected then perform segue where sender is selected path
        performSegue(withIdentifier: "goToProducts", sender: category)
        //perform segue for each category selected
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        
        //to change the nav bar in next segued view
        let barBtn = UIBarButtonItem() //create a new bar button item
        barBtn.title = ""
        navigationItem.backBarButtonItem = barBtn
        
        
        //before segue
        
        
        if let productVC = segue.destination as? ProductsVC
        //if the destination is ProductsVC ie product view window
        
        {
            //MARK: - to remove while deploying
            //this is just for build time not for production , we could have used if let or guard but category is not an option it's cumpulsion to be stricly category, so we assert to check if category is nil
            assert(sender as? Category != nil)
            
            
            //send the struct title and the image to the respective view
            productVC.initProducts(category: sender as! Category)
           
        }
        
        
    }
    
    


}

