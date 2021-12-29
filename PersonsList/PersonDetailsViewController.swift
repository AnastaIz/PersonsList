//
//  PersonDetailsViewController.swift
//  PersonsList
//
//  Created by Anastasia Izmaylova on 28.12.2021.
//

import UIKit

class PersonDetailsViewController: UIViewController {

    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = person.fullName

        phoneLabel.text = "Phone: \(person.phone)"
        
        emailLabel.text = "Email: \(person.email)"
    }
}
