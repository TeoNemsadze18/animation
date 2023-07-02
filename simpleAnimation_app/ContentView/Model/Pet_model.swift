//
//  Pet_model.swift
//  simpleAnimation_app
//
//  Created by teona nemsadze on 29.06.23.
//

import Foundation

struct Pet: Codable {
    var name: String
    var birthday = Date()
    var lastMeal: Date
    var lastDrink: Date
    
    var age: Int {
        let timeSince = calcTimeSince(data: birthday)
        return timeSince
    }
    
    var happinessLevel: String {
        hunger == "Hungry" || thirst == "Thirsty" ? "Unhappy" : "Happy"
    }
    
    
    var hunger: String {
        let timeSince = calcTimeSince(data: lastMeal)
        var string = ""
        
        //return string
        
        switch timeSince {
        case 0..<30: string = "Satiated"
        case 30..<60: string = "Getting hungry..."
        case 60...: string = "Hungary"
        default: string = "Idk"
        }
        return string
    }
    
    var thirst: String {
        let timeSince = calcTimeSince(data: lastMeal)
        var string = ""
        
        
        switch timeSince {
        case 0..<30: string = "Satiated"
        case 30..<60: string = "Getting hungary..."
        case 60...: string = "Thirsty"
        default: string = "Idk"
        }
        return string
    }
    
}


