//
//  Employee.swift
//  learn-swift
//
//  Created by Robert Ďurica on 28.06.2022.
//

import Foundation

class Employee: PersonProtocol {

    /**
    Class variable type of string.
 
    Readonly property. Cannot be set outside of class (set) -  Setter excluded
     */
    private(set) var name: String
    
    /// Person surname
    private(set) var surname: String
    
    /// Person ID
    private(set) var id: Int {
        
        /// Event occures after setting new value
        didSet{
            print("New ID assigned")
        }
        
        /// Event occures before setting new value
        willSet {
            print("New ID will be assigned shortly...")
        }
    }
    
    /**
     Designed initializer (constructor)
     */
    init(id: Int, name: String, surname: String){
        self.id = id
        self.name = name
        self.surname = surname
        
    }
    
    /**
     Convenience initializer (constructor)
     */
    convenience init(name: String, surname: String){
        self.init(id: 0, name: name, surname: surname)
    }

    func walk() {
        print("walking...")
    }
    
    func run() {
        print("running...")
    }
    
    func swim() throws{
        let randomNumber = Int.random(in: 0 ... 10)
        
        if randomNumber >= 5 {
            print("swimming...")
        } else {
            throw AppErrors.FirstError
        }
        
    }
    
    
}
