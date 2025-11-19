//
//  ContentView.swift
//  AnimationsAndTransitions
//
//  Created by M Balakauskas on 19/11/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var buttonTapped = false
    
    var body: some View {
        Button("Click me!") {
       //     withAnimation {
                buttonTapped.toggle()
       //     }
        }
        .padding()
        .background(buttonTapped ? .blue :.green)
        .foregroundColor(.white)
        .cornerRadius(15)
        .font(.headline)
        .animation(.default, value: buttonTapped)
        .scaleEffect(buttonTapped ? 1.3 : 1.0)
        .animation(.easeInOut(duration: 1), value: buttonTapped)
        
    }
}

#Preview {
    ContentView()
}
