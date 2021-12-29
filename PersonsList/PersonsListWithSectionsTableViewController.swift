//
//  PersonsListWithSectionsTableViewController.swift
//  PersonsList
//
//  Created by Anastasia Izmaylova on 28.12.2021.
//

import UIKit

class PersonsListWithSectionsTableViewController: UITableViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        personObject.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        2
        
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personWithSectionName", for: indexPath)

        let objectPhone = personObject[indexPath.row]

        var content = cell.defaultContentConfiguration()

        if indexPath.row == 0 {
            content.text = objectPhone.sectionObjectPhone
            content.image = UIImage(systemName: "phone")
        } else {
            content.text = objectPhone.sectionObjectEmail
            content.image = UIImage(systemName: "envelope")
        }

        cell.contentConfiguration = content

        return cell

    }
    
   
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        personObject[section].sectionName
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.selectRow(at: indexPath, animated: true, scrollPosition: .none)
        
    }

}
