//
//  AboutPersonViewController.swift
//  PhoneList
//
//  Created by Дмитрий Олейнер on 29.12.2021.
//

import UIKit

class AboutPersonViewController: UIViewController {

    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = person.fullName
        emailLabel.text = "Email: \(person.email)"
        phoneLabel.text = "Phone: \(person.phone)"
    }
}
       
