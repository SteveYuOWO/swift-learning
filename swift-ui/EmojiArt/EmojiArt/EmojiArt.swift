//
//  EmojiArt.swift
//  EmojiArt
//
//  Created by Steve Yu on 2020/7/26.
//  Copyright © 2020 CS193p Instructor. All rights reserved.
//

import SwiftUI


struct EmojiArt {
    var backgroundURL: URL?
    var emojis = [Emoji]()
    
    struct Emoji: Identifiable {
        let text: String
        var x: Int
        var y: Int
        var size: Int
        var id: Int
        
        init(text: String, x: Int, y: Int, size: Int, id: Int) {
            self.text = text
            self.x = x
            self.y = y
            self.size = size
            self.id = id
        }
    }
    
    private var uniqueEmojiId: Int = 0
    
    func addEmoji(_ text: String, x: Int, y: Int, size: Int) {
        self.uniqueEmojiId += 1
        emojis.append(Emoji(text: text, x: x, y: y, size: size, id: self.uniqueEmojiId))
    }
}
