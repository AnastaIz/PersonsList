//
//  Person.swift
//  PersonsList
//
//  Created by Anastasia Izmaylova on 28.12.2021.
//

import Foundation

struct Person {
    
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
}

extension Person {
    static func getPersonsList() -> [Person] {
        
        var persons = [Person]()

        for _ in 1...10 {

            let person = Person (
                name: DataManager.shared.names.randomElement() ?? " ",
                surname: DataManager.shared.surnames.randomElement() ?? " ",
                email: DataManager.shared.emails.randomElement() ?? " ",
                phone: DataManager.shared.phones.randomElement() ?? " "
            )
            
            persons.append(person)

        }
        
        return persons
    }
}

let personList = Person.getPersonsList()

struct Objects {
    
    let sectionName: String
    let sectionObjectPhone: String
    let sectionObjectEmail: String
    
}

extension Objects {
    static func getSectionObjects() -> [Objects] {
        
        var objects = [Objects]()
        
        for person in personList {
            let object = Objects (sectionName: person.fullName, sectionObjectPhone: person.phone, sectionObjectEmail: person.email)
            objects.append(object)
        }
        
        return objects
    }
}

let personObject = Objects.getSectionObjects()
