//
//  ContentView.swift
//  Key Transposer
//
//  Created by Nick Simone on 2021-03-01.
//

import SwiftUI

let DEFAULT_CHORD_NUM = 6

struct ContentView: View {
    
    var chordPickerContainerView:ChordPickerContainerView = ChordPickerContainerView(DEFAULT_CHORD_NUM)
    
    var keyPicker:ChordPickerView = ChordPickerView(width: Double(UIScreen.main.bounds.width))
        
    var body: some View {
        VStack {
            Text("Key Transposer")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
                .padding()
            Label("Chord Progression", systemImage: "")
            self.chordPickerContainerView
            Spacer().frame(height: 20)
            Label("Key", systemImage: "")
            Spacer().frame(height: 20)
            // Key Section - Picker
            keyPicker
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
