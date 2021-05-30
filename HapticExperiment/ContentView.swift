//
//  ContentView.swift
//  HapticExperiment
//
//  Created by Md. Mehrab haque on 30/5/21.
//

import SwiftUI
import CoreHaptics

struct ContentView: View {
    var body: some View {
        VStack{
            Button("Tap"){
                do {
                    let engine = try CHHapticEngine()
                    let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: 1)
                    let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 0.6)
                    let event = CHHapticEvent(eventType: .hapticContinuous, parameters: [intensity, sharpness], relativeTime: 0, duration: 0.5)

                    let pattern = try CHHapticPattern(events: [event], parameters: [])
                    let player = try engine.makePlayer(with: pattern)

                    try engine.start()
                    try player.start(atTime: 0)
                } catch let error {
                    print("Not Compatible")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
