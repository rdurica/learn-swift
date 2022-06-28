//
//  main.swift
//  learn-swift
//
//  Created by Robert Ďurica on 28.06.2022.
//

import Foundation

let john = Employee(name: "John", surname: "Doe")
let emily = Employee(name: "Emily", surname: "Doeson")

do {
    try john.swim()
} catch AppErrors.FirstError {
    
    /// With \() you can add variable into string
    print("Oops... \(john.name) cannot swim")
}

/// Collections
var employees = Array<Employee>()
employees.append(john)
employees.append(emily)

/// Filter from collection
var filteredJohn = employees.filter{ emp in
    return emp.name == "John"
}
