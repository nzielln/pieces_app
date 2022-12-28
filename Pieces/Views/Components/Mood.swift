//
//  Mood.swift
//  Pieces
//
//  Created by Ellah Nzikoba on 1/24/22.
//

import SwiftUI

struct Mood: View {
    var mood: Emoticon
    var body: some View {
        mood.emoji
            .resizable()
            .scaledToFit()
            .frame(width: 25, height: 25)
    }
}

struct Mood_Previews: PreviewProvider {
    static var previews: some View {
        Mood(mood: EmoticonMoods().getEmoticons(theme: .dark)[0])
    }
}
