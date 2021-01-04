//
//  Game.swift
//  Bullseye
//
//  Created by Ashirvad Jena on 04/01/21.
//

import Foundation

struct Game {
    var target = Int.random(in: 1...100)
    var score = 0
    var round = 1
    
    func points(sliderValue: Int) -> Int {
        100 - abs(target - sliderValue)
    }
}
