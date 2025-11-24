//
//  ContentView.swift
//  AnimationsAndTransitions
//
//  Created by M Balakauskas on 19/11/2025.
//

import SwiftUI

struct ScalingButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding()
            .background(.blue)
            .foregroundColor(.white)
            .cornerRadius(15)
            .font(.headline)
            .scaleEffect(configuration.isPressed ? 1.3 : 1.0)
            .animation(.easeInOut(duration: 0.2), value: configuration.isPressed)
    }
}

struct ContentView: View {
    var body: some View {
        Button("Click me!") {
     
        }
        .buttonStyle(ScalingButtonStyle())
    }
}

#Preview {
    ContentView()
}
