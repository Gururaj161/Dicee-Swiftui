//
//  ContentView.swift
//  Dicee Swiftui
//
//  Created by Gururaja M on 28/06/25.
//

import SwiftUI

struct ContentView: View {
    @State var leftDiceNumber: Int = 1
    @State var rightDiceNumber: Int = 3
    
    var body: some View {
        ZStack{
            Image("background")
                .resizable().edgesIgnoringSafeArea(.all)
            VStack{
                Image("diceeLogo")
                Spacer()
                HStack{
                    DiceView(diceValue: leftDiceNumber)
                    Spacer()
                    DiceView(diceValue: rightDiceNumber)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
                    
                }) {
                
                    Text("Roll")
                        .fontWeight(.heavy).font(.system(size: 24))
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 100, height: 50)
                        .background(Color.red)
                        .cornerRadius(10)
                        
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
            .frame(width: 140, height: 140)
            .padding()
    }
}
