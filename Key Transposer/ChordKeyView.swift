//
//  ContentView.swift
//  Key Transposer
//
//  Created by Nick Simone on 2021-03-01.
//

import SwiftUI

struct ChordKeyView: View {

    @State private var selectedKey:Int = Constants.DEFAULT_KEY
    
    @State private var selectedChords:[Int] = [Int](repeating: Constants.DEFAULT_KEY, count: 6)
    
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
                .onChange(of: self.selectedChords[0], perform: { value in
                    self.selectedKey = self.selectedChords[0]
                })
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
                let oldKey = self.selectedChords[0]
                var newChord:Int
                for i in 0..<self.numChords {
                    newChord = self.selectedChords[i] + (self.selectedKey - oldKey)
                    if newChord > Constants.KEYS.count { // Number too high
                        newChord -= Constants.KEYS.count
                    }
                    else if newChord < 0 { // Number too low
                        newChord += Constants.KEYS.count
                    }
                    self.selectedChords[i] = newChord
                }
            })
        }
    }
    
    init(_ numChords:Int = Constants.DEFAULT_NUM_CHORDS) {
        self.numChords = numChords
        self.chordPickerWidth = Double((100/numChords) * (Int(UIScreen.main.bounds.width) / 100))
    }
}

struct ChordKeyView_Previews: PreviewProvider {
    static var previews: some View {
        ChordKeyView()
    }
}
