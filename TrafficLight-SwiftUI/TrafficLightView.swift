//
//  TraficLightView.swift
//  TrafficLight-SwiftUI
//
//  Created by Сазонов Станислав on 08.06.2023.
//

import SwiftUI

struct TrafficLightView: View {
    let color: Color
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(color)
                .frame(width: 100, height: 100)
                .overlay(Circle().stroke(Color.white,lineWidth: 4))
                .shadow(radius: 10)
                .padding(.bottom)
        }
    }
}

struct TrafficLightView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightView(color: .gray)
    }
}
