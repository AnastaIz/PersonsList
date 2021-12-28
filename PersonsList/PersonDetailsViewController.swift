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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
