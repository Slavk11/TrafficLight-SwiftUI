//
//  StartButtonView.swift
//  TrafficLight-SwiftUI
//
//  Created by Сазонов Станислав on 09.06.2023.
//

import SwiftUI

struct StartButtonView: View {
    var text: String
    var action: () -> Void
    
    var body: some View {
        Button(action:action) {
            Text(text)
                .font(.title)
                .foregroundColor(.white)
                .frame(width: 150, height: 40)
                .overlay(Capsule().stroke(Color.gray,lineWidth: 5))
                .background(Color.blue)
                .cornerRadius(20)
        }
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView(text: "START", action: {})
    }
}
