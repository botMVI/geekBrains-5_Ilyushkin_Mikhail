//
//  main.swift
//  5_Ilyushkin_Mikhail
//
//  Created by Michael Iliouchkin on 29.07.2020.
//  Copyright © 2020 Michael Iliouchkin. All rights reserved.
//
//
import Foundation


enum Window {
    case open, close
}
enum Engine {
    case on, off
}
enum CheckStatus {
    case readyForDrive, haveProblem
}


protocol Car {

    var owner: String { get }
    var type: String { get }

    func riding()
}


extension Car {
    
    func openWindow(window: Window) {
        switch window {
        case .close:
            print("Winodw is closed")
        case .open:
            print("Window is opened")
        }
    }
    
    func checkStatus(status: CheckStatus) {
        switch status {
        case .haveProblem:
            print("Smth went wrong")
        case .readyForDrive:
            print("We're ready to go")
        }
    }
    
    func startEngine(engine: Engine) {
        switch engine {
        case .on:
            print("Engine is started")
        case .off:
            print("Engine isn't started")
        }
    }
}


class SportCar: Car {
    
    var owner: String {
        return "Man own this car"
    }
    var type: String {
        return "Sport"
    }
    let zeroToHundred: Double
    
    init(zeroToHundred: Double) {
        self.zeroToHundred = zeroToHundred
    }
    

    
    func riding() {
        print("We're riding on sport car")
    }
}

extension SportCar: CustomStringConvertible {
    
    var description: String {
        return "Sport car wrooom wrooom"
    }
}


class TrunkCar: Car {
    
    var owner: String {
        return "Company own this car"
    }
    var type: String {
        return "Truck"
    }
    let capacity: Double
    
    init(capacity: Double) {
        self.capacity = capacity
    }
    
    
    func riding() {
        print("We're riding on trunk car")
    }
}

extension TrunkCar: CustomStringConvertible {
    
    var description: String {
        return "Trunk car chooo choooo"
    }
}


let lambo = SportCar(zeroToHundred: 2.2)
let mb = SportCar(zeroToHundred: 3.2)

let kamaz = TrunkCar(capacity: 1000.5)
let belaz = TrunkCar(capacity: 50000.0)

print(lambo)
print(mb.type)

print(kamaz.owner)
print(belaz.capacity)


