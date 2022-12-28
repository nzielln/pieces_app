//
//  Dairy.swift
//  Pieces
//
//  Created by Ellah Nzikoba on 1/24/22.
//

import Foundation
import SwiftUI

class Diary: ObservableObject {
    @Published var entries: [Entry]
    @Published var entriesPosition: [CGPoint: Entry?]
    @Published var pointImage: [CGPoint: Image]
    @Published var user: User?
    var time: Time
    
    init() {
        self.entries = []
        self.entriesPosition = [:]
        self.pointImage = [:]
        self.time = Time()
    }
    
    func addUser(user: User) {
        self.user = user
    }
    
}

extension CGPoint : Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(x)
        hasher.combine(y)
    }
}
