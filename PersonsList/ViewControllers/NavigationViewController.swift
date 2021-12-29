//
//  NavigationViewController.swift
//  PersonsList
//
//  Created by Дмитрий Олейнер on 29.12.2021.
//

import UIKit

class NavigationViewController: UITabBarController {

   private let persons = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        personsAdd()
    }
}

extension NavigationViewController {
    
    private func personsAdd () {
        guard let viewControllers = self.viewControllers else { return }
        
        for viewController in viewControllers {
            guard let navigationVC = viewController as? UINavigationController else { return }
            if let personsVC = navigationVC.topViewController as? PersonsTableViewController {
                personsVC.persons = persons
            } else if let personsInfoVC = navigationVC.topViewController as? PersonsInfoTableViewController {
                personsInfoVC.persons = persons
            }
        }
    }
}
