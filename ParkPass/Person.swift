//
//  Person.swift
//  ParkPass
//
//  Created by Jesse Anderson on 5/31/18.
//  Copyright © 2018 Jesse Anderson. All rights reserved.
//

import Foundation

enum GuestType {
    case classic
    case vip
    case childFree
}

enum EmployeeType {
    
}

protocol Person {
    var firstName: String? { get set }
    var lastName: String? { get set }
    var birthDay: Date {get set}
}

protocol ParkGuest: Person {
    
}

protocol ParkEmployee: Person {
    var streeAddress: String { get set }
    var city: String { get set }
    var stateCode: String { get set }
    var zipCode: Int { get set }
    var employeeType: EmployeeType { get set }

}

struct HourlyEmployee: ParkEmployee {
    var firstName: String?
    var lastName: String?
    var streeAddress: String
    var city: String
    var stateCode: String
    var zipCode: Int
    var birthDay: Date
    var employeeType: EmployeeType
    var access: [AreaAccess]
}



