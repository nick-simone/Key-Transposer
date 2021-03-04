//
//  ChordPickerView.swift
//  Key Transposer
//
//  Created by Nick Simone on 2021-03-01.
//

import Foundation
import SwiftUI

struct ChordPickerContainerView : View {
    var numPickers:Int!
    var pickerWidth:Double!
    var chordPickerViews:[ChordPickerView]!

    var body: some View {
        HStack(alignment: .center, spacing: 10, content: {
            ForEach(0..<self.numPickers){
                chordPickerViews[$0]
            }
        }).frame(width: CGFloat(UIScreen.main.bounds.width)).clipped()
    }
    
    init(numPickers:Int){
        self.numPickers = numPickers
        self.pickerWidth = Double((100/numPickers) * (Int(UIScreen.main.bounds.width) / 100))
        self.chordPickerViews = []
        for _ in 1...numPickers {
            chordPickerViews.append(ChordPickerView(width: self.pickerWidth))
        }
    }
    
    mutating func addPicker() {
        self.numPickers += 1
        self.pickerWidth = Double((100/numPickers) * (Int(UIScreen.main.bounds.width) / 100))
        self.chordPickerViews.append(ChordPickerView(width: self.pickerWidth))
        for var item in self.chordPickerViews {
            item.updateWidth(width: self.pickerWidth)
        }
    }
    
    mutating func removePicker() {
        self.numPickers -= 1
        self.pickerWidth = Double((100/numPickers) * (Int(UIScreen.main.bounds.width) / 100))
        for var item in self.chordPickerViews {
            item.updateWidth(width: self.pickerWidth)
        }
    }
    
    func changeKey(chordIndexChange:Int) {
        for var picker in chordPickerViews {
            picker.selectChord(chordIndexChange: chordIndexChange)
        }
    }

}
