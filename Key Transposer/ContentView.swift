//
//  ContentView.swift
//  Key Transposer
//
//  Created by Nick Simone on 2021-03-06.
//

import SwiftUI
struct ContentView: View {
    
    @State private var chordKeyView:ChordKeyView = ChordKeyView()
    
    @State private var settingsExpanded:Bool = false
    
    @State private var sharps:Bool = true
    
    let buttonWidth:Double = 145
    
    var body: some View {
        ScrollView {
            VStack (spacing: 0) {
                Text("Key Transposer")
                    .font(.title)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                Spacer().frame(height: 10)
                DisclosureGroup("Settings", isExpanded: $settingsExpanded){
                    VStack (spacing: 20) {
                        Spacer().frame(height: 2)
                        HStack {
                            Button("Add Chord") {
                                self.addChord()
                            }
                            .padding([.leading, .trailing])
                            .disabled(self.chordKeyView.numChords > 5)
                            .frame(width: CGFloat(self.buttonWidth))
                            Button("Remove Chord"){
                                self.removeChord()
                            }
                            .padding([.leading, .trailing])
                            .disabled(self.chordKeyView.numChords < 3)
                            .frame(width: CGFloat(self.buttonWidth))
                        }
                        HStack {
                            Button("Use Sharps") {
                                self.useSharps()
                            }
                            .padding([.leading, .trailing])
                            .disabled(self.sharps)
                            .frame(width: CGFloat(self.buttonWidth))
                            Button("Use Flats"){
                                self.useFlats()
                            }
                            .padding([.leading, .trailing])
                            .disabled(!self.sharps)
                            .frame(width: CGFloat(self.buttonWidth))
                        }
                    }
                    Spacer().frame(height: 2)
                }
                .padding(.horizontal)
                .fixedSize(horizontal: true/*@END_MENU_TOKEN@*/, vertical: /*@START_MENU_TOKEN@*/true)
                Spacer().frame(height: 10)
                Text("Chord Progression")
                self.chordKeyView
            }
        }
    }
    
    func addChord(){
        self.updateChordKeyView(self.chordKeyView.numChords + 1, self.sharps)
    }
    
    func removeChord() {
        self.updateChordKeyView(self.chordKeyView.numChords - 1, self.sharps)
    }
    
    func useSharps(){
        self.sharps = true
        self.updateChordKeyView(self.chordKeyView.numChords, self.sharps)
    }
    
    func useFlats() {
        self.sharps = false
        self.updateChordKeyView(self.chordKeyView.numChords, self.sharps)
    }
    
    func updateChordKeyView(_ numChords:Int, _ useSharps:Bool){
        self.chordKeyView = ChordKeyView(numChords, useSharps)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
