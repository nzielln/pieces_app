//
//  ProfilePicture.swift
//  Pieces
//
//  Created by Ellah Nzikoba on 1/24/22.
//
import Foundation
import SwiftUI

struct ProfilePicture: View {
    @State private var diary = Diary()
    var body: some View {
        ZStack {
            diary.user!.getProfile()
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipShape(Circle())
                .overlay(Circle().stroke(diary.user!.getTheme() == .dark ? Color.light : Color.dark, lineWidth: 3))
                .frame(width: 120, height: 120, alignment: .center)
        }
    }
}

struct ProfilePicture_Previews: PreviewProvider {
    
    static var previews: some View {
        ProfilePicture()
    }
}
