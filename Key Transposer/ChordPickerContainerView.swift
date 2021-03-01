//
//  ChordPickerView.swift
//  Key Transposer
//
//  Created by Nick Simone on 2021-03-01.
//

import Foundation
import SwiftUI

struct ChordPickerContainerView : View {
    var numPickers:Int
    var pickerWidth:Double
    var chordPickerViews:[ChordPickerView] = []

    var body: some View {
        HStack {
            ForEach(0..<self.numPickers){
                chordPickerViews[$0]
            }
        }
    }
    
    init(_ numPickers:Int){
        self.numPickers = numPickers
        self.pickerWidth = Double((100/numPickers) * (Int(UIScreen.main.bounds.width) / 100))
        for _ in 1...numPickers {
            chordPickerViews.append(ChordPickerView(width: self.pickerWidth))
        }
    }
    
    mutating func addPicker() {
        self.numPickers += 1
        self.pickerWidth = Double((100/numPickers) * (Int(UIScreen.main.bounds.width) / 100))
        // do add
    }
    
    mutating func removePicker() {
        self.numPickers -= 1
        self.pickerWidth = Double((100/numPickers) * (Int(UIScreen.main.bounds.width) / 100))
        // do remove
    }
}

