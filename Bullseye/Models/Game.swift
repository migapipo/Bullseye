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
        var difference: Int = self.target - sliderValue
        if difference < 0  {
            difference = difference * -1
            //OR difference *= -1
            //OR difference = -difference
        }
        var awardPoints: Int = 100 - difference
        return awardPoints
    }
}
