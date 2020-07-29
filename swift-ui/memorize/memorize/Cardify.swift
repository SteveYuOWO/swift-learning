//
//  Cardify.swift
//  memorize
//
//  Created by Steve Yu on 2020/7/24.
//  Copyright © 2020 CS193p Instructor. All rights reserved.
//

import SwiftUI

struct Cardify: AnimatableModifier {
    var rotation: Double
    
    init(isFaceUp: Bool) {
        rotation = isFaceUp ? 0: 180
    }
    
    var isFaceUp: Bool {
        rotation < 90     
    }
    
    var animatableData: Double {
        get { return rotation }
        set { rotation = newValue }
    }
    
    func body(content: Content) -> some View{
        return ZStack {
            Group {
                RoundedRectangle(cornerRadius: conerRadius).fill(Color.white)
                RoundedRectangle(cornerRadius: conerRadius).stroke(lineWidth: edgeLineWidth)
                content
            }
            .opacity(isFaceUp ? 1 : 0)
            
            RoundedRectangle(cornerRadius: conerRadius).fill()
            .opacity(isFaceUp ? 0 : 1)
            
            
        }
        .rotation3DEffect(Angle.degrees(rotation), axis: (0, 0.8, 0))
    }
    
    private let conerRadius: CGFloat = 10.0
    private let edgeLineWidth: CGFloat = 3
}

extension View {
    func cardify(isFaceup: Bool) -> some View {
        self.modifier(Cardify(isFaceUp: isFaceup))
    }
}
