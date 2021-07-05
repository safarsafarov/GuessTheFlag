//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Safar Safarov on 2021/8/26.
//

import SwiftUI

struct ContentView: View {
    
    var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"]
    var correctAnswer = Int.random(in: 0...2)
    
    @State private var showingScore = false
    @State private var scoreTitle = ""
    
    var body: some View {
        
        VStack {
            Text("Tap the flag of")
            ForEach(0 ..< 3) { number in
                Button(action: {
                    // flag was tapped
                }) {
                    Image(self.countries[number])
                        .renderingMode(.original)
                }
                Text(countries[correctAnswer])
            }
            Spacer()
        }
    }
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
        } else {
            scoreTitle = "Wrong"
        }
        
        showingScore = true
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
