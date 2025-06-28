//
//  ContentView.swift
//  Dicee Swiftui
//
//  Created by Gururaja M on 28/06/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("background")
                .resizable().edgesIgnoringSafeArea(.all)
            VStack{
                Image("diceeLogo")
                HStack{
                    DiceView(diceValue: 1)
                    DiceView(diceValue: 3)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

struct DiceView: View {
   var diceValue: Int
    var body: some View {
        Image("dice\(diceValue)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
    }
}
