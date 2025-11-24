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
      //      .animation(nil, value: configuration.isPressed)
            .scaleEffect(configuration.isPressed ? 1.3 : 1.0)
            .animation(.easeInOut(duration: 0.2), value: configuration.isPressed)
    }
}

struct ContentView: View {
    
    @State private var showImage = false
    
    var body: some View {
        VStack {
            Button(showImage ? "Make it go away!": "Make an image appear!") {
                withAnimation {
                    showImage.toggle()
                }
               
            }
            .buttonStyle(ScalingButtonStyle())
            
           
            Image("pikachu")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .opacity(showImage ? 1 : 0)
        }
    }
}

#Preview {
    ContentView()
}
