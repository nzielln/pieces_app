//
//  Emoticon.swift
//  Pieces
//
//  Created by Ellah Nzikoba on 1/24/22.
//

import Foundation
import SwiftUI

var lightImages = ["excited_light", "happy_light", "neutral_light", "sad_light", "crying_light", "mad_light"]
var imageNames = ["excited", "happy", "neutral", "sad", "crying", "mad"]

struct Emoticon: Identifiable, Equatable {
    var id: UUID
    var description: String
    var emoji: Image
    var rating: Int
    
    init(id: UUID = UUID(), description: String, emoji: Image, rating: Int) {
        self.id = id
        self.description = description
        self.emoji = emoji
        self.rating = rating
    }
    
    
    func getDescription() -> String {
        return self.description
    }
    
    func getDescription() -> Image {
        return self.emoji
    }
    
    func getRating() -> Int {
        return self.rating
    }
    
}
