//
//  ContentView.swift
//  TrafficLight-SwiftUI
//
//  Created by Сазонов Станислав on 08.06.2023.
//

import SwiftUI

enum CurrentLight {
    case off, red, yellow, green
}

struct ContentView: View {
    @State private var buttonText = "Start"
    @State private var currentLight: CurrentLight = .off
    
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                TrafficLightView(
                    color: .red,
                    opacity: currentLight == .red ? 1 : 0.3
                )
                TrafficLightView(
                    color: .yellow,
                    opacity: currentLight == .yellow ? 1 : 0.3
                )
                TrafficLightView(
                    color: .green,
                    opacity: currentLight == .green ? 1 : 0.3
                )
                
                Spacer()
                
                StartButtonView(text: buttonText) {
                    if buttonText == "Start" {
                        buttonText = "NEXT"
                    }
                    switchLights()
                }
            }
            .padding()
        }
    }
    
    private func switchLights() {
        switch currentLight {
        case .off: currentLight = .red
        case .red: currentLight = .yellow
        case .yellow: currentLight = .green
        case .green: currentLight = .red
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
