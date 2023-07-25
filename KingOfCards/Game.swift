//
//  Game.swift
//  KingOfCards
//
//  Created by Le Viet Tung on 27/06/2023.
//

import Foundation

struct Game {
    private(set) var playerCard: String = "card14"
    private(set) var botCard: String = "card14"
    private(set) var playerScore = 0
    private(set) var botScore = 0
    
    mutating func deal() {
        let playerRandom = Int.random(in: 2...14)
        let botRandom = Int.random(in: 2...14)
        
        playerCard = "card\(playerRandom)"
        botCard = "card\(botRandom)"
        
        if playerRandom > botRandom {
            playerScore += 1
        } else if botRandom > playerRandom {
            botScore += 1
        }
    }
    
    mutating func reset() {
        playerCard = "card14"
        botCard = "card14"
        playerScore = 0
        botScore = 0
    }
}
