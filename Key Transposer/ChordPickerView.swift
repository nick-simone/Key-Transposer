//
//  ChordPickerView.swift
//  Key Transposer
//
//  Created by Nick Simone on 2021-03-01.
//

import Foundation
import SwiftUI

struct ChordPickerView: View {
    let chords = Constants.KEYS
    @State var selectedChord:Int = 2
    var width:Double = 0
    
    var body: some View {
        Picker(selection: $selectedChord, label: Text("Picker")) {
            ForEach(0..<self.chords.count) {
                Text(self.chords[$0])/*.font(.system(size: 15))*/
            }
        }.frame(width: CGFloat(self.width)).clipped()
    }
    
    init(width:Double){
        self.width = width
        self.selectedChord = 4
    }
    
    mutating func updateWidth(width:Double){
        self.width = width
    }
}

