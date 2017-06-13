//
//  RestaurantTableViewController.swift
//  FoodPin
//
//  Created by Fikri Imaduddin on 6/12/17.
//  Copyright © 2017 Fikri Imaduddin. All rights reserved.
//
import UIKit

class RestaurantTableViewController: UITableViewController {

    var labeel = [
        "Muhammad Fikri Imaduddin","Malang, 01 November 2000","Malang","Laki Laki"
    ]
    var uimage = [
        "reja.png","unnamed.png","rubik.png","reja.png"
    ]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        navigationController?.hidesBarsOnSwipe = true
        
        // Enable Self Sizing Cells
        tableView.estimatedRowHeight = 80.0
        tableView.rowHeight = UITableViewAutomaticDimension


    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.hidesBarsOnSwipe = true
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return labeel.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! RestaurantTableViewCell
        
        // Configure the cell...
        cell.nameLabel.text = labeel[indexPath.row]
        cell.thumbnailImageView.image = UIImage(named: uimage[indexPath.row])
        
        return cell
    }
    



}
