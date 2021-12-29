//
//  PersonsTableViewController.swift
//  PhoneList
//
//  Created by Дмитрий Олейнер on 29.12.2021.
//

import UIKit

class PersonsTableViewController: UITableViewController {

    var persons: [Person]!
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personsList", for: indexPath)
       
        let person = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        cell.contentConfiguration = content

        return cell
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let aboutPersonVC = segue.destination as? AboutPersonViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let person = persons[indexPath.row]
        aboutPersonVC.person = person
    }
}
