//
//  ContentView.swift
//  Key Transposer
//
//  Created by Nick Simone on 2021-03-01.
//

import SwiftUI

struct ContentView: View {

    @State private var selectedKey:Int = Constants.DEFAULT_KEY
    
    @State private var selectedChords:[Int] = [0, 0, 0, 0, 0, 0]
    
    var numChords:Int!
    
    var chordPickerWidth:Double!
    
    var body: some View {
        VStack {
            Text("Key Transposer")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
                .padding()
            Label("Chord Progression", systemImage: "")
            HStack(alignment: .center, spacing: 10, content: {
                // Generic Chord Pickers
                ForEach(0..<self.numChords){ pickerNum in
                    Picker(selection: $selectedChords[pickerNum], label: Text("Picker")) {
                        ForEach(0..<Constants.KEYS.count) { i in
                            Text(Constants.KEYS[i]).tag(i)
                        }
                    }
                }.frame(width: CGFloat(self.chordPickerWidth)).clipped()
            }).frame(width: CGFloat(UIScreen.main.bounds.width)).clipped()
            
            Spacer().frame(height: 20)
            Label("Key", systemImage: "")
            Spacer().frame(height: 20)
            // Key Section - Picker
            Picker(selection: $selectedKey, label: Text("Picker")) {
                ForEach(0..<Constants.KEYS.count) { i in
                    Text(Constants.KEYS[i]).tag(i)
                }
            }.onChange(of: self.selectedKey, perform: { _ in
                var prevChord:Int
                for i in 0..<self.selectedChords.count {
                    if (i == 0){
                        self.selectedChords[i] = self.selectedKey
                    }
                    else {
                        prevChord = selectedChords[i]
                        self.selectedChords[i] += (self.selectedKey - prevChord)
                    }
                    print("picker: \(i), chord: \(self.selectedChords[i])")
                }
            })
        }
    }
    
    init(_ numChords:Int = Constants.DEFAULT_NUM_CHORDS) {
        self.numChords = numChords
        self.chordPickerWidth = Double((100/numChords) * (Int(UIScreen.main.bounds.width) / 100))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
