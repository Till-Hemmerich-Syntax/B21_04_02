//
//  Person.swift
//  B21_04_02
//
//  Created by Till Hemmerich on 06.11.24.
//

import Foundation
import SwiftData

@Model
class Person{
    @Attribute(originalName: "firstName") let name : String
    var age : Int = 0
    init(_ name: String,_ age: Int) {
        self.name = name
        self.age = age
    }
    
}
