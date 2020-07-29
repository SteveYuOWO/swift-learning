//
//  EmojiMemoryGameView.swift
//  memorize
//
//  Created by Steve Yu on 2020/7/23.
//  Copyright © 2020 CS193p Instructor. All rights reserved.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    @ObservedObject var viewModel: EmojiMomoryGame
    
    var body: some View {
        VStack {
            Grid(viewModel.cards) { card in
                CardView(card: card).onTapGesture {
                    withAnimation(.linear(duration: 0.8)) {
                        self.viewModel.choose(card: card)
                    }
                }.padding(5)
            }
            .font(Font.largeTitle)
            .padding()
            
            Text("Score: \(viewModel.getScore())")
                
            .padding()
            .font(.headline)
            
            // Reset Game
            Button(action: {
                withAnimation(Animation.easeInOut(duration: 0.5)) {
                    self.viewModel.resetGame()
                }
            }, label: {
                Text("New Game")
            })
        }
        .foregroundColor(Color.orange)
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    
    var body: some View {
        GeometryReader(content: { geometry in
            self.body(for: geometry.size)
        })
    }
    
    @State private var animatedBonusRemaining: Double = 0
    
    private func startBonusTimeAnimation() {
        animatedBonusRemaining = card.bonusTimeRemaining
        withAnimation(.linear(duration: card.bonusTimeRemaining)) {
            animatedBonusRemaining = 0
        }
    }
    
    @ViewBuilder
    private func body(for size: CGSize) -> some View {
        if self.card.isFaceUp || !self.card.isMatched {
            ZStack {
                Group {
                    if card.isConsumingBonusTime {
                        Pie(startAngle: Angle(degrees: 0-90), endAngle: Angle(degrees: -animatedBonusRemaining*360-90), clockwise: true)
                        .onAppear {
                            self.startBonusTimeAnimation()
                        }
                    } else {
                        Pie(startAngle: Angle(degrees: 0-90), endAngle: Angle(degrees: -animatedBonusRemaining*360-90), clockwise: true)
                    }
                }
                .padding(5).opacity(0.4)
                .transition(.scale)
                
                
                Text(self.card.content)
                    .font(.system(size: fontSize(for: size)))
                    .rotationEffect(Angle.degrees(card.isMatched ? 360: 0))
                    .animation(self.card.isMatched ? Animation.linear(duration: 1).repeatForever(autoreverses: false): .default)
              
            }
            .cardify(isFaceup: self.card.isFaceUp)
            .transition(AnyTransition.scale)
            
        }
    }
    
    // MARK: - Drawing Constant
    
    private let conerRadius: CGFloat = 10.0
    private let edgeLineWidth: CGFloat = 3
    private let fontScaleFactor: CGFloat = 0.65
    private func fontSize(for size: CGSize) -> CGFloat {
        min(size.width, size.height) * fontScaleFactor
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let game = EmojiMomoryGame()
        game.choose(card: game.cards[1])
        return EmojiMemoryGameView(viewModel: game)
    }
}
