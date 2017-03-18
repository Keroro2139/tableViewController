//
//  RestaurantTableViewController.swift
//  FoodPin
//
//  Created by student on 3/17/2560 BE.
//  Copyright © 2560 Burapha University. All rights reserved.
//

import UIKit

class RestaurantTableViewController: UITableViewController {
    var restaurantNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats And Deli", "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional","Barrafina", "Donostia", "Royal Oak", "CASK Pub and Kitchen"]
    var image  = [#imageLiteral(resourceName: "cafedeadend"),#imageLiteral(resourceName: "homei"),#imageLiteral(resourceName: "teakha"),#imageLiteral(resourceName: "cafeloisl"),#imageLiteral(resourceName: "petiteoyster"),
                  #imageLiteral(resourceName: "forkeerestaurant"),#imageLiteral(resourceName: "posatelier"),#imageLiteral(resourceName: "bourkestreetbakery"),#imageLiteral(resourceName: "haighschocolate"),#imageLiteral(resourceName: "palominoespresso"),#imageLiteral(resourceName: "upstate"),#imageLiteral(resourceName: "traif"),#imageLiteral(resourceName: "grahamavenuemeats"),#imageLiteral(resourceName: "wafflewolf"),#imageLiteral(resourceName: "fiveleaves"),#imageLiteral(resourceName: "cafelore"),#imageLiteral(resourceName: "confessional"),#imageLiteral(resourceName: "barrafina"),#imageLiteral(resourceName: "donostia"),#imageLiteral(resourceName: "royaloak"),#imageLiteral(resourceName: "caskpubkitchen")]
    var restaurantLocations = ["Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong",
                               "Hong Kong", "Hong Kong", "Hong Kong", "Sydney", "Sydney", "Sydney",
                               "New York", "New York", "New York", "New York", "New York", "New York",
                               "New York","London", "London", "London","London"]
    var restaurantTypes = ["Coffee & Tea Shop", "Cafe", "Tea House", "Austrian / Causual Drink", "French", "Bakery", "Bakery", "Chocolate", "Cafe", "American / Seafood", "American", "American", "Breakfast & Brunch", "Coffee & Tea", "Coffee & Tea", "Latin American", "Spanish", "Spanish", "Spanish", "British", "Thai"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    override var prefersStatusBarHidden: Bool {
        return true
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return restaurantNames.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! RestaurantTableViewCell
        Cell.nameLabel.text = restaurantNames[indexPath.row]
        Cell.thumbnailImageView.image = image[indexPath.row]
        Cell.locationLabel.text = restaurantLocations[indexPath.row]
        Cell.typeLabel.text = restaurantTypes[indexPath.row]
        return Cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}