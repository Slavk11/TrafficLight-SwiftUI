//
//  ContentView.swift
//  TrafficLight-SwiftUI
//
//  Created by Сазонов Станислав on 08.06.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var buttonText = "Start"
    @State private var lightColor = Color.gray
    @State private var lightIsOff = 0.5
    
    var body: some View {
        VStack {
            TrafficLightView(color: lightColor == .red ? .red : .red.opacity(lightIsOff))
            TrafficLightView(color: lightColor == .yellow ? .yellow : .yellow.opacity(lightIsOff))
            TrafficLightView(color: lightColor == .green ? .green : .green.opacity(lightIsOff))
            Spacer()
            StartButtonView(text: buttonText, action: switchLights)
        }
        .padding()
    }
    
    private func switchLights() {
        switch lightColor {
        case .red:
            lightColor = .yellow
        case .yellow:
            lightColor = .green
        default:
            lightColor = .red
        }
        buttonText = (buttonText == "Start") ? "NEXT" : buttonText
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
