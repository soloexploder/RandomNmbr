//
//  RandomNumber.swift
//  RandomNmbr
//
//  Created by Даниил Хантуров on 04.02.2022.
//

struct RandomNumber {
    
    var minimumValue: Int
    var maximumValue: Int
    
    var getRandom: Int {
        Int.random(in: minimumValue...maximumValue)
    }
}
