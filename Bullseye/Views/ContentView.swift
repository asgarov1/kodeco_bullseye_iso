//
//  ContentView.swift
//  Bullseye
//
//  Created by Javid Asgarov on 08.01.26.
//

import SwiftUI

struct ContentView: View {
    @State private var alertIsVisible = false
    @State private var sliderValue = 10.0
    @State private var game = Game()
    
    var body: some View {
        VStack {
            Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .bold()
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.title3)
                .kerning(2)
            Text(String(game.target))
                .kerning(-1)
                .font(.largeTitle)
                .fontWeight(.black)
            HStack {
                Text("1").bold()
                Slider(value: $sliderValue, in: 1.0...100.0)
                    .tint(.red)
                Text("100").bold()
            }
            Button("Hit me") {
                alertIsVisible = true
            }.alert(
                "Hello there!",
                isPresented: $alertIsVisible,
                actions: {
                    Button("Awesome") {
                        print("Alert closed")
                    }
                },
                message: {
                    let value = Int(sliderValue);
                    Text("""
                        This slide's value is \(value).
                        You scored \(game.points(sliderValue: value))
                        """
                    )
                }
            )
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
