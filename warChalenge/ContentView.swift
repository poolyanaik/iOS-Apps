//
//  ContentView.swift
//  warChalenge
//
//  Created by shanker on 28/3/22.
//

import SwiftUI

struct ContentView: View {
    @State private var playerCard:String = "card4"
    @State private  var cpuCard:String = "card5"
    @State private  var playerScore:Int = 0
    @State private  var cpuScore:Int = 1
    
    var body: some View {
        ZStack{
            Image("background")
                .ignoresSafeArea()

            VStack{
                Spacer()
                Image("logo")
                HStack(){
                    Spacer()
                    Image("\(playerCard)")
                    Spacer()
                    Image("\(cpuCard)")
                    Spacer()
                }
                Button {
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    playerCard = "card\(playerRand)"
                    cpuCard = "card\(cpuRand)"
                    if playerRand > cpuRand {
                        playerScore = playerScore + 1
                    }
                    else if  playerRand < cpuRand {
                        cpuScore = cpuScore + 1
                    }
                    else if playerRand < cpuRand {
                        playerScore = playerScore + 1
                        cpuScore = cpuScore + 1
                    }
                    else {
                        Text("Has issues in the coding")
                    }
                        
                   
                    
                } label: {
                    Image("dealbutton")
                }

                HStack{
                    VStack{
                        Text("Player")
                        Text("\(playerScore)")
                    }
                   
                    VStack(){
                        Text("CPU")
                        .foregroundColor(Color.yellow)
                        Text("\(cpuScore)")
                        .foregroundColor(Color.white)
                    }
            }
                Spacer()
                
        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
