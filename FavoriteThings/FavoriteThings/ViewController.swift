//
//  ViewController.swift
//  FavoriteThings
//
//  Created by Jason Schatz on 11/18/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var favTable: UITableView!
    // Model
    
    let favoriteThings = [
        //TODO: Fill this array with your favorite things. Then use this collection to populate your table.
    
        "Ice cream",
        "Rice and sushi",
        "Salad",
        "Steak",
        "Dessert Wine",
        "Grape juice",
        "Fruits",
        "Seafood",
        "Poultry",
        "Pork",
        "Meat of all kinds",
        "Sumpcious desserts"
    ]

    // Mark: Table View Data Source Methods
    
    /**
    * Number of Rows
    */
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
        // TODO: Implement this method to get the correct row count
        let itemCount = favoriteThings.count
        let placeholderCount = 2
        return itemCount
    }

    
    /**
    * Cell For Row At Index Path
    */

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
      
      // TODO: Implement method
      // 1. Dequeue a reusable cell from the table, using the correct “reuse identifier”
      // 2. Find the model object that corresponds to that row
      // 3. Set the images and labels in the cell with the data from the model object
      // 4. return the cell.
        
        let placeholderCell = UITableViewCell()
        placeholderCell.textLabel?.text = favoriteThings[indexPath.row]
        return placeholderCell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        favTable.delegate = self
    }
}

