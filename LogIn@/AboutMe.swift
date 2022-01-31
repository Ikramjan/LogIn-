//
//  AboutMe.swift
//  LogIn@
//
//  Created by Икрамджан Абдукадыров on 29/1/22.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(login: "User",
             password: "Password",
             person: Person.getPerson()
       )
    }
}
struct Person {
    let name: String
    let surname: String
    let age: String
    let born: String
    let image: String
    let instagram: String
    let number: String
    let aboutMe: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    var burn: String {
        "\(born)"
    }
    var ageM: String {
        "\(age)"
    }
    var findMe: String {
        "\(number): \(instagram)"
    }
    var knowMe: String {
        "\(aboutMe)"
    }
    static func getPerson() -> Person {
        Person(name: "Ikramjan", surname: "Abdukadyrov", age: "29 year", born: "19.12.1992", image: "myPhoto",instagram: "📱ikramjan0719", number: "✆996705777077", aboutMe: "I study at SwiftBook, I like sport. Try to find my way to success")
        
    }
}

