//
//  ChordPickerView.swift
//  Key Transposer
//
//  Created by Nick Simone on 2021-03-01.
//

import Foundation
import SwiftUI

struct ChordPickerView: View {
    let chords = ["A", "B", "C", "D", "E", "F", "G"]
    @State var selectedChord:Int = 0
    var width:Double = 0
    
    var body: some View {
        Picker(selection: $selectedChord, label: Text("Picker")) {
            ForEach(0..<self.chords.count) {
                Text(self.chords[$0])
            }
        }.frame(width: CGFloat(self.width)).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
    }
    
    init(width:Double){
        self.width = width
        self.selectedChord = 4
    }
    
    mutating func updateWidth(width:Double){
        self.width = width
    }
}

