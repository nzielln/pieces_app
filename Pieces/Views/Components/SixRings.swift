//
//  SixRings.swift
//  Pieces
//
//  Created by Ellah Nzikoba on 1/25/22.
//

import SwiftUI

struct SixRings: View {
    let rings = GalaxyRings().rings
    
    var body: some View {
        ZStack {
            ForEach(rings) { ring in
                Circle()
                    .stroke(Color.light, lineWidth: 2)
                    .opacity(0.5)
                    .frame(width: ring.radius * 0.75, height: ring.radius * 0.75, alignment: .center)
            }
        }.padding(5)
    }
}

struct SixRings_Previews: PreviewProvider {
    static var previews: some View {
        SixRings()
    }
}
