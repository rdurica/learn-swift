//
//  main.swift
//  learn-swift
//
//  Created by Robert Ďurica on 28.06.2022.
//

import Foundation

let john = Employee(name: "John", surname: "Doe")

do {
    try john.swim()
} catch AppErrors.FirstError {
    print("Oops... John cannot swim")
}
