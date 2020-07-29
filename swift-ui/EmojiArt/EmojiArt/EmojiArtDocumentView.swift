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
        VStack {
            ScrollView(.horizontal) {
                HStack {
                    ForEach(EmojiArtDocument.palette.map{ String($0) }) { emoji in
                        Text(emoji)
                            .font(Font.system(size: 40))
                    }
                }
            }
            .padding(.horizontal)
            Rectangle().foregroundColor(.blue)
                .edgesIgnoringSafeArea([.horizontal, .bottom])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiArtDocumentView(document: EmojiArtDocument())
    }
}

extension String: Identifiable {
    public var id: String { return self }
}
