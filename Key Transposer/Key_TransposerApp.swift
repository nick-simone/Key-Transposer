//
//  Key_TransposerApp.swift
//  Key Transposer
//
//  Created by Nick Simone on 2021-03-01.
//

import SwiftUI

@main
struct Key_TransposerApp: App {
    @StateObject var key = Key()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(key)
        }
    }
    
}
