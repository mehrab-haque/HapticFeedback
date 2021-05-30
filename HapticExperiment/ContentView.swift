//
//  ContentView.swift
//  HapticExperiment
//
//  Created by Md. Mehrab haque on 30/5/21.
//

import SwiftUI
import Haptico


struct ContentView: View {
    var body: some View {
        VStack{
            Button("Tap"){
                do {
                    Haptico.shared().generateFeedbackFromPattern(".oO-Oo.", delay: 0.1)
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
