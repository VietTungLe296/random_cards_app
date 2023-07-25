//
//  GameView.swift
//  KingOfCards
//
//  Created by Le Viet Tung on 27/06/2023.
//

import SwiftUI

struct GameView: View {
    @State var game = Game()
    
    var body: some View {
        ZStack {
            Image("background-wood-grain")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                
                HStack {
                    Spacer()
                    Image(game.playerCard)
                    Spacer()
                    Image(game.botCard)
                    Spacer()
                }
                
                Spacer()
                
                Button {
                    game.deal()
                } label: {
                    Image("button")
                }
                
                Spacer()
                
                Button {
                    game.reset()
                } label: {
                    Image(systemName: "gobackward")
                        .foregroundColor(.white)
                        .padding()
                        .background(.orange)
                        .cornerRadius(30)
                }
              
                Spacer()
                
                HStack {
                    Spacer()
                    VStack {
                        Text("PLAYER")
                            .font(.headline)
                            .padding(.bottom, 10)
                        Text(String(game.playerScore))
                            .font(.largeTitle)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("BOT")
                            .font(.headline)
                            .padding(.bottom, 10)
                        Text(String(game.botScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .font(.headline)
                .foregroundColor(.white)
            }
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
