//
//  ContentView.swift
//  HapticExperiment
//
//  Created by Md. Mehrab haque on 30/5/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Button("Tap"){
                var hapticManager: HapticManager?
                hapticManager = HapticManager()
                hapticManager?.playSlice()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
