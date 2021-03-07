//
//  ContentView.swift
//  Key Transposer
//
//  Created by Nick Simone on 2021-03-06.
//

import SwiftUI
struct ContentView: View {
    
    @State private var chordKeyView = ChordKeyView()
    
    var body: some View {
        VStack (spacing: 0) {
            Spacer().frame(height: 30)
            Text("Key Transposer")
                .font(.title)
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
            Spacer().frame(height: 10)
            Text("Chord Progression")
            Spacer().frame(height: 10)
            HStack {
                Button("Add Chord") {
                    self.chordKeyView = ChordKeyView(self.chordKeyView.numChords + 1)
                }
                .padding([.leading, .trailing])
                .disabled(self.chordKeyView.numChords > 5)
                Button("Remove Chord"){
                    self.chordKeyView = ChordKeyView(self.chordKeyView.numChords - 1)
                }
                .padding([.leading, .trailing])
                .disabled(self.chordKeyView.numChords < 3)
            }
            self.chordKeyView
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
