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
        Picker(selection: self.$selectedChord, label: Text("Picker")) {
            ForEach(0..<self.chords.count) { num in
                Text(self.chords[num]).tag(num)/*.font(.system(size: 15))*/
            }
        }
        .frame(width: CGFloat(self.width)).clipped()
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

