//
//  EmojiMemoryGame.swift
//  memorize
//
//  Created by Steve Yu on 2020/7/23.
//  Copyright © 2020 CS193p Instructor. All rights reserved.
//

import SwiftUI

class EmojiMomoryGame: ObservableObject {
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = [
            "👻", "⛵︎", "💎", "🍓", "⛳︎", "🏖",
            "👻", "⛵︎", "💎", "🍓", "⛳︎", "🏖"]
//            "⛅︎", "🍭", "⛄︎", "🍫", "🍬", "🍰"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count, cardContentFactory: {pairIndex in emojis[pairIndex]})
    }
    
    // MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
    
    func resetGame() {
        model = EmojiMomoryGame.createMemoryGame()
    }
    
    func getScore() -> Int {
        model.score
    }
}

