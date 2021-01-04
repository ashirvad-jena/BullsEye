//
//  ContentView.swift
//  Bullseye
//
//  Created by Ashirvad Jena on 30/12/20.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isAlertVisible = false
    @State private var slider = 50.0
    @State private var game = Game()
    
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("🎯🎯🎯\nPut the bull's eye as close as you can".uppercased())
                    .bold()
                    .kerning(2.0)
                    .multilineTextAlignment(.center)
                    .lineSpacing(4.0)
                    .font(.footnote)
                    .foregroundColor(Color("TextColor"))
                Text("\(game.target)")
                    .kerning(-1.0)
                    .foregroundColor(Color("TextColor"))
                    .font(.largeTitle)
                    .fontWeight(.black)
                HStack {
                    Text("1")
                        .bold()
                        .foregroundColor(Color("TextColor"))
                    Slider(value: $slider, in: 1.0 ... 100.0)
                    Text("100")
                        .bold()
                        .foregroundColor(Color("TextColor"))
                }
                .padding(10)
                Button(action: {
                    self.isAlertVisible = true
                }, label: {
                    Text("Hit me".uppercased())
                        .bold()
                        .font(.title3)
                })
                .padding()
                .background(
                    ZStack {
                        Color("ButtonColor")
                        LinearGradient(
                            gradient: Gradient(
                                colors: [Color.white.opacity(0.3),
                                         Color.clear]
                            ),
                            startPoint: .top,
                            endPoint: .bottom)
                    }
                )
                .foregroundColor(.white)
                .cornerRadius(20)
                .alert(isPresented: $isAlertVisible, content: {
                    let roundedVAlue = Int(slider.rounded())
                    return Alert(title: Text("Your score"),
                                 message: Text("Slider value is \(roundedVAlue)" +
                                                "\nYou scored: \(game.points(sliderValue: roundedVAlue)) in this game"),
                                 dismissButton: .default(Text("Awesome")))
                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        //        ContentView()
        ContentView()
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
