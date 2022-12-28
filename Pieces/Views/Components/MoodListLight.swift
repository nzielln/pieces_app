//
//  MoodList.swift
//  Pieces
//
//  Created by Ellah Nzikoba on 1/24/22.
//

import SwiftUI
struct MoodListLight: View {
    var theme: Theme
    var emoticons = EmoticonMoods()
    var body: some View {
        HStack {
            ForEach(emoticons.getEmoticons(theme: theme)) { mood in
                mood.emoji
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35, height: 35)
                    .padding(5)
                
            }
        }
    }
}

struct MoodListLight_Previews: PreviewProvider {
    static var previews: some View {
        MoodListLight(theme: .dark)
    }
}
