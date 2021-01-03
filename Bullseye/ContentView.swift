//
//  ContentView.swift
//  Bullseye
//
//  Created by Ashirvad Jena on 30/12/20.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isAlertVisible = false
    
    var body: some View {
        VStack {
            Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
            Text("89")
                .kerning(-1.0)
                .font(.largeTitle)
                .fontWeight(.black)
            HStack {
                Text("1")
                    .bold()
                Slider(value: .constant(50), in: 1.0 ... 100.0)
                Text("100")
                    .bold()
            }
            Button(action: {
                self.isAlertVisible = true
            }, label: {
                Text("Hit me")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
