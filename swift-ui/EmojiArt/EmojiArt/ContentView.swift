//
//  ContentView.swift
//  EmojiArt
//
//  Created by Steve Yu on 2020/7/26.
//  Copyright © 2020 CS193p Instructor. All rights reserved.
//

import SwiftUI

struct EmojiArtDocumentView: View {
    @ObservedObject var document: EmojiArtDocument
    
    var body: some View {
        Text("Hello, World!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiArtDocumentView()
    }
}
