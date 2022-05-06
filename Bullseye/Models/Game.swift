//
//  Game.swift
//  Bullseye
//
//  Created by Xiaoyu Sun on 28/4/22.
//

import Foundation

struct Game {
    var target: Int = Int.random(in: 1...100)
    var score: Int = 0
    var round: Int = 1
    
    func points(sliderValue: Int) -> Int {
        let difference: Int = abs(self.target - sliderValue)
        let awardPoints: Int = 100 - difference
        return awardPoints
    }
}
