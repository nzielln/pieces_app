//
//  User.swift
//  Pieces
//
//  Created by Ellah Nzikoba on 1/24/22.
//

import Foundation
import SwiftUI

class User: ObservableObject, Hashable {
    static func == (lhs: User, rhs: User) -> Bool {
        return (lhs.name == rhs.name
                && lhs.theme == rhs.theme
                && lhs.profilePciture == rhs.profilePciture
                && lhs.moods == rhs.moods)
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
        hasher.combine(theme)

    }
    
    var name: String
    @Published private var profilePciture: Image = Image(systemName: "profile.crop.circle")
    @Published private var theme: Theme = .dark
    @Published private var moods: [Emoticon] = []
    
    init(name: String, profile: Image, theme: Theme) {
        self.name = name
        self.profilePciture = profile
        self.theme = theme
    }
    
    func setName(name: String) {
        self.name = name
    }
    
    func setProfile(profilePic: Image) {
        self.profilePciture = profilePic
    }
    
    func setTheme(theme: Theme) {
        self.theme = theme
    }
    
    func addMood(mood: Emoticon) {
        self.moods.append(mood)
    }
    
    
    func getTheme() -> Theme {
        return self.theme
    }
    
    func getProfile() -> Image {
        return self.profilePciture
    }
    
    func getName() -> String {
        return self.name
    }

}



extension User {
    func getSample() -> User {
        let user = User(name: "Sophie", profile: Image("profile"), theme: .light)
        return user
    }
    
}
