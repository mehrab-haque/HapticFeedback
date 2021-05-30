//
//  ContentView.swift
//  HapticExperiment
//
//  Created by itiw on 30/5/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Button("Tap"){
                print("Hi")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
