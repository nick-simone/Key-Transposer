//
//  ContentView.swift
//  Key Transposer
//
//  Created by Nick Simone on 2021-03-01.
//

import SwiftUI

struct ContentView: View {
    
    var chordPickerContainerView:ChordPickerContainerView!
    
    var keyPicker:ChordPickerView!
    
    @State var selectedKey:Int = Constants.DEFAULT_KEY
    
    var body: some View {
        VStack {
            Text("Key Transposer")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
                .padding()
            Label("Chord Progression", systemImage: "")
            self.chordPickerContainerView
            Spacer().frame(height: 20)
            Label("Key", systemImage: "")
            Spacer().frame(height: 20)
            // Key Section - Picker
            Picker(selection: $selectedKey, label: Text("Picker")) {
                ForEach(0..<Constants.KEYS.count) { num in
                    Text(Constants.KEYS[num]).tag(num)/*.font(.system(size: 15))*/
                }
            }
            .onChange(of: self.selectedKey, perform: { value in
                self.chordPickerContainerView.changeKey(chordIndexChange: self.selectedKey)
                print(self.selectedKey)
            })
        }
    }
    
    init(){
        self.chordPickerContainerView = ChordPickerContainerView(numPickers: Constants.DEFAULT_NUM_CHORDS)
        self.keyPicker = ChordPickerView(width: Double(UIScreen.main.bounds.width), type: "Key")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
