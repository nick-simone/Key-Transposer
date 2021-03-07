//
//  ContentView.swift
//  Key Transposer
//
//  Created by Nick Simone on 2021-03-06.
//

import SwiftUI
struct ContentView: View {
    
    var chordKeyView = ChordKeyView()
    
    var body: some View {
        self.chordKeyView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
