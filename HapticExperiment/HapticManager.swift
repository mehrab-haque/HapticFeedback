//
//  HapticManager.swift
//  HapticExperiment
//
//  Created by Md. Mehrab Haque on 30/5/21.
//

import CoreHaptics

class HapticManager {
  // 1
  let hapticEngine: CHHapticEngine

  // 2
  init?() {
    // 3
    let hapticCapability = CHHapticEngine.capabilitiesForHardware()
    guard hapticCapability.supportsHaptics else {
      return nil
    }

    // 4
    do {
      hapticEngine = try CHHapticEngine()
    } catch let error {
      print("Haptic engine Creation Error: \(error)")
      return nil
    }
  }
}
