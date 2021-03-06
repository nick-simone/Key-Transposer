//
//  ChordPickerView.swift
//  Key Transposer
//
//  Created by Nick Simone on 2021-03-01.
//

import Foundation
import SwiftUI

struct ChordPickerView: View {
    @State private var selectedChord:Int = Constants.DEFAULT_KEY
    let chords = Constants.KEYS
    var width:Double!
    var type:String!
    
    var body: some View {
        Picker(selection: $selectedChord, label: Text("Picker")) {
            ForEach(0..<self.chords.count) { i in
                Text(self.chords[i]).tag(i)
            }
        }
        .frame(width: CGFloat(self.width)).clipped()
        .onChange(of: self.selectedChord, perform: { value in
            print(self.selectedChord)
        })
    }
    
    init(width:Double, type:String = "Chord"){
        self.width = width
        self.type = type
    }
    
    mutating func updateWidth(width:Double){
        self.width = width
    }
    
    mutating func selectChord(chordIndexChange:Int) {
        self.selectedChord += chordIndexChange
    }
    
    func getSelectedChord() -> Int{
        return self.selectedChord
    }
}

