//
//  EmojiArtDocument.swift
//  EmojiArt
//
//  Created by Steve Yu on 2020/7/26.
//  Copyright © 2020 CS193p Instructor. All rights reserved.
//

import SwiftUI

class EmojiArtDocument: ObservableObject {
    
    static let palette: String = "🍡🍢🍧🍦🥧🧁🍰🎂🍮"
    
    @Published private var emojiArt: EmojiArt = EmojiArt()
    
    // MARK: - Intent(s) a
}
