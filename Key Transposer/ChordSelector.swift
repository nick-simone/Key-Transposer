//
//  ChordSelector.swift
//  Key Transposer
//
//  Created by Nick Simone on 2021-03-06.
//

import Foundation


class ChordSelector: ObservableObject {
    @Published var selectedChords:[Int] = [0, 0, 0, 0, 0, 0]
}
