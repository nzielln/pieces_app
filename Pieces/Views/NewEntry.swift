//
//  NewEntry.swift
//  Pieces
//
//  Created by Ellah Nzikoba on 1/24/22.
//

import SwiftUI

struct NewEntry: View {
    var body: some View {
        
        Button {
        
        } label: {
            Label("Done", systemImage: "Nonde")
            .labelStyle(.titleOnly)
            .padding()
            .frame(width: 75, height: 40)
            .background(
                RoundedRectangle(cornerRadius: 15).fill(Color.dark)
            ).foregroundColor(Color.light)
        }
    }
}

struct NewEntry_Previews: PreviewProvider {
    static var previews: some View {
        NewEntry()
    }
}
