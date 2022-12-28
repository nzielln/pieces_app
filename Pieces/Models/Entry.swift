//
//  Entry.swift
//  Pieces
//
//  Created by Ellah Nzikoba on 1/24/22.
//

import Foundation
import SwiftUI

struct Entry: Identifiable, Hashable {
    
    var id: UUID
    var date: Date
    var title: String
    var mood: Emoticon
    var entry: String
    var img: Image
    
    static func == (lhs: Entry, rhs: Entry) -> Bool {
        return (lhs.id == rhs.id
        && lhs.title == rhs.title
        && lhs.mood.description == rhs.mood.description
        && lhs.entry == rhs.entry
        && lhs.img == rhs.img)
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(title)
        hasher.combine(date)
        }
    
    init(id: UUID = UUID(), date: Date = Date(), title: String, mood: Emoticon, entry: String, img: Image ) {
        self.id = id
        self.date = date
        self.title = title
        self.mood = mood
        self.entry = entry
        self.img = img
    }
}
