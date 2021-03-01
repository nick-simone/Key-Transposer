//
//  ContentView.swift
//  Key Transposer
//
//  Created by Nick Simone on 2021-03-01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Key Transposer")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
                .padding()
            Label("Chord Progression", systemImage: "")
//            HStack {
//                Picker(selection: .constant(4)/*@END_MENU_TOKEN@*/, label: /*@START_MENU_TOKEN@*/Text("Picker")) {
//                    Text("A").tag(1)
//                    Text("B").tag(2)
//                    Text("C").tag(3)
//                    Text("D").tag(4)
//                    Text("E").tag(5)
//                    Text("F").tag(6)
//                    Text("G").tag(7)
//                }.frame(width: 33 * UIScreen.main.bounds.width/100)
//                Picker(selection: .constant(4)/*@END_MENU_TOKEN@*/, label: /*@START_MENU_TOKEN@*/Text("Picker")) {
//                    Text("A").tag(1)
//                    Text("B").tag(2)
//                    Text("C").tag(3)
//                    Text("D").tag(4)
//                    Text("E").tag(5)
//                    Text("F").tag(6)
//                    Text("G").tag(7)
//                }
//                .padding()
//                .frame(width: 33 * UIScreen.main.bounds.width/100)
//                Picker(selection: .constant(4)/*@END_MENU_TOKEN@*/, label: /*@START_MENU_TOKEN@*/Text("Picker")) {
//                    Text("A").tag(1)
//                    Text("B").tag(2)
//                    Text("C").tag(3)
//                    Text("D").tag(4)
//                    Text("E").tag(5)
//                    Text("F").tag(6)
//                    Text("G").tag(7)
//                }
//                .padding()
//                .frame(width: 33 * UIScreen.main.bounds.width/100)
//            }
            ChordPickerContainerView(2)
            Spacer().frame(height: 20)
            Label("Desired Key", systemImage: "")
            Spacer().frame(height: 20)
            // Key Section - Buttons
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20, content: {

                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("A")
                }
                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("B")
                }
                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("C")
                }
                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("D")
                }
                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("E")
                }
                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("F")
                }
                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("G")
                }
            })
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
