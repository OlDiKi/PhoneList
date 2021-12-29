//
//  PersonsInfoTableViewController.swift
//  PersonsList
//
//  Created by Дмитрий Олейнер on 29.12.2021.
//

import UIKit

class PersonsInfoTableViewController: UITableViewController {

    var persons: [Person]!

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }

    

   

}
