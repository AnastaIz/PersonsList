//
//  DataManager.swift
//  PersonsList
//
//  Created by Anastasia Izmaylova on 28.12.2021.
//

class DataManager {
    
    static let shared = DataManager()
    
    let names = [
        "John", "Aaron", "Tim", "Ted",
        "Steven", "Sharon", "Nicola",
        "Allen", "Bruce", "Carl"
    ]
    
    let surnames = [
        "Smith", "Dow", "Isaacson", "Pennyworth",
        "Jankin", "Butler", "Black", "Robertson",
        "Murphy", "Williams"
    ]
    
    let emails = [
        "jjjj@maol.ru", "aaaa@mail.ru", "eeee@mail.ru",
        "hhhh@mail.ru", "wwww@mail.ru", "mmmm@mail.ru",
        "xxxx@mail.ru", "pppp@mail.ru", "ssss@mail.ru",
        "llll@mail.ru"
    ]
    
    let phones = [
        "748396026", "145036847", "287185656", "293520954",
        "562880226", "738594072", "828654134", "645898473",
        "432349845", "459477626"
    ]
    
    private init() {}
}
