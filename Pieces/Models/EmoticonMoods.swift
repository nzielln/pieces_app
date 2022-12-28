//
//  EmoticonMoods.swift
//  Pieces
//
//  Created by Ellah Nzikoba on 1/28/22.
//

import Foundation
import SwiftUI

struct EmoticonMoods {
    private var lights: [Emoticon] = []
    private var darks: [Emoticon] = []
    
    init() {
        for (index, img) in imageNames.enumerated() {
            let imgName = img + "_light"
            lights.append(Emoticon(description: imgName, emoji: Image(imgName), rating: index + 1 ))
        }
        
        for (index, img) in imageNames.enumerated() {
            let imgName = img + "_dark"
            darks.append(Emoticon(description: imgName, emoji: Image(imgName), rating: index + 1 ))
        }
    }
    
    func getEmoticons(theme: Theme) -> [Emoticon]{
        if (theme.name.lowercased() == "light") {
            return lights
        } else {
            return darks
        }
    }
}
