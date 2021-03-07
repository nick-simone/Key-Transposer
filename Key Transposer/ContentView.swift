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
        VStack {
            self.chordKeyView
            HStack {
                Button("Add Chord") {
                    self.chordKeyView = ChordKeyView(self.chordKeyView.numChords + 1)
                }
                .disabled(self.chordKeyView.numChords > 5)
                Button("Remove Chord"){
                    self.chordKeyView = ChordKeyView(self.chordKeyView.numChords - 1)
                }
                .disabled(self.chordKeyView.numChords < 3)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
