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
        var difference: Int
        if sliderValue > self.target {
            difference = sliderValue - self.target
        } else if sliderValue < self.target {
            difference = self.target - sliderValue
        } else {
            difference = 0
        }
        var awardPoints: Int = 100 - difference
        return awardPoints
    }
}
