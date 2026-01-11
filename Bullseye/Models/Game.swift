//
//  Game.swift
//  Bullseye
//
//  Created by Javid Asgarov on 10.01.26.
//

struct Game {
    var target: Int = Int.random(in: 1...100)
    var score: Int = 0
    var round: Int = 1
    
    func points(sliderValue: Int) -> Int {
        let pointsAway = abs(target - sliderValue)
        return 100 - pointsAway
    }
}
