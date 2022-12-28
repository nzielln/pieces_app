//
//  Socials.swift
//  Pieces
//
//  Created by Ellah Nzikoba on 1/24/22.
//

import SwiftUI

struct SocialIconStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack {
            configuration.icon
                .scaleEffect(0.05, anchor: .center)
                .frame(width: 5, height: 5, alignment: .center)
        }
        .font(.caption)
    }
}
    
    struct Socials: View {
        var body: some View {
            HStack (alignment: .center) {
                Label("Google", image: "google").labelStyle(SocialIconStyle()).padding()
                Label("Facebook", image: "facebook").labelStyle(SocialIconStyle()).padding()
                Label("Apple", image: "apple").labelStyle(SocialIconStyle()).padding()
            }
            
        }
    }
    
    struct Socials_Previews: PreviewProvider {
        static var previews: some View {
            Socials()
        }
    }
