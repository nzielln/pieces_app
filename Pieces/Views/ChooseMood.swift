//
//  ChooseMood.swift
//  Pieces
//
//  Created by Ellah Nzikoba on 1/24/22.
//

import SwiftUI

struct ChooseMood: View {
    var theme: Theme
    var emoticons = EmoticonMoods()
    var body: some View {
        VStack {
            Text("How did you feel today?")
            .foregroundColor(.dark)
            .font(Font.custom("Lato-Bold", size: 24))
            .padding(.bottom, 25)
            MoodListLight(theme: theme).padding(.bottom, 50)
            
            Button {
                
            } label: {
                Label("Send", systemImage: "None")
                    .labelStyle(SmallButtonStyleDarkLine())
                
            }
    
            
            
        }
    }
}

struct ChooseMood_Previews: PreviewProvider {
    static var previews: some View {
        ChooseMood(theme: .dark)
    }
}
