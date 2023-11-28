//
//  ContentView.swift
//  War Card Game
//
//  Created by Jeffrey Gumbs on 2023-11-07.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card4"
    @State var cpuCard = "card12"
    
      @State var playerScore = 0
      @State  var cpuScore = 0
    
    var body: some View {
        ZStack{
            Image(.backgroundPlain)
                .resizable()
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image(.logo)
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    deal()
                }, label: {
                    Image(.button)
                })
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom,10)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom,10)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }.padding()
                    .foregroundColor(.white)
                Spacer()
            }
        }
        
    }
    
    func deal(){
        var playerCardValue = Int.random(in: 2...14)
        var cpuCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        cpuCard = "card" + String(cpuCardValue)
        if playerCardValue > cpuCardValue {
           playerScore += 1
        } else if cpuCardValue > playerCardValue {
           cpuScore += 1
        }
    }
}

#Preview {
    ContentView()
}
